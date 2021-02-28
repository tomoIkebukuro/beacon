import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/class/timeline/timeline_notifier.dart';
import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/pages/home/home_page.dart';
import 'package:beacon_sns/pages/set_profile/set_profile.dart';
import 'package:beacon_sns/pages/social_auth/social_auth.dart';
import 'package:beacon_sns/repository/auth.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:beacon_sns/widgets/custom_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:beacon_sns/main.dart';
import 'package:provider/provider.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({
    Key key,
  }) : super(key: key);
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  bool isInitialized = false;

  // Done
  Future<void> checkAppStatus() async {
    // ignore: literal_only_boolean_expressions
    while (true) {
      try {
        final data = await serverRepository.get(id: 'status', path: 'app');
        if (data['version'] != 1) {
          await showCustomDialog(
            context: context,
            title: 'エラー',
            discription: 'アップデートしてください',
          );
        } else {
          break;
        }
      } on Exception catch (e) {
        await showCustomDialog(
          context: context,
          title: 'エラー',
          discription: 'サーバに接続できません。',
        );
      }
    }
  }

  // Done
  Future<void> checkUser() async {
    // ignore: literal_only_boolean_expressions
    while (true) {
      try {
        final user = FirebaseAuth.instance.currentUser;
        //final user =  context.getSignedInUser();
        //final user=context.
        if (user == null) {
          await Navigator.of(context).push(
            MaterialPageRoute<SocialAuthPage>(
              builder: (context) => SocialAuthPage(),
            ),
          );
        } else {
          userProfile = userProfile.copyWith(id: user.uid);
          break;
        }
      } on Exception catch (e) {
        await showCustomDialog(
            context: context,
            title: 'エラー',
            discription: 'firebase authentication');
      }
    }
  }

  // Done
  Future<void> checkUserProfile() async {
    // ignore: literal_only_boolean_expressions
    while (true) {
      try {
        final data =
            await serverRepository.get(id: userProfile.id, path: 'profiles');
        if (data != null) {
          userProfile = Profile.fromJson(data);
          break;
        } else {
          await Navigator.of(context).push<SetProfilePage>(
              MaterialPageRoute(builder: (_) => SetProfilePage.wrapped()));
        }
      } on Exception catch (e) {
        await showCustomDialog(
            context: context, title: 'エラー', discription: '通信に失敗');
      }
    }
    return;
  }

  // Done
  Future<void> checkPermission() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();

    // ignore: literal_only_boolean_expressions
    while (true) {
      try {
        if (permission == LocationPermission.deniedForever) {
          await showCustomDialog(
              context: context,
              title: 'エラー',
              discription: '位置情報の利用ができないためアプリを使用することができません。');
        }
        if (permission != LocationPermission.denied) {
          break;
        } else {
          permission = await Geolocator.requestPermission();
        }

        if (permission != LocationPermission.whileInUse &&
            permission != LocationPermission.always) {
          await showCustomDialog(
              context: context, title: 'エラー', discription: '通信に失敗');
        }
      } on Exception catch (e) {
        await showCustomDialog(
            context: context, title: 'エラー', discription: '権限を有効かできません。');
      }
    }

    return;
  }

  Future<void> checkGeoLocation() async {
    // ignore: literal_only_boolean_expressions
    while (true) {
      try {
        final position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
          timeLimit: const Duration(milliseconds: 5000),
        );
        if (position != null) {
          currentLatitude = position.latitude;
          currentLongitude = position.longitude;
          break;
        }
        // ignore: avoid_catches_without_on_clauses
      } catch (e) {
        await showCustomDialog(
            context: context,
            title: 'エラー',
            discription: "位置情報を取得できません。¥nアプリを使用するには位置情報をオンにしてください。");
      }
    }
    return;
  }

  Future<void> checkFavorites() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final data = prefs.getString('favorites');
      print(data);
      if (data == null) return;
      final favoritesJson = json.decode(data) as List<dynamic>;
      favorites = favoritesJson
          .map<Thread>(
            (dynamic e) => Thread.fromJson(e as Map<String, dynamic>),
          )
          .toList() as List<Thread>;
    } catch (e) {
      print(e.toString());
      await showCustomDialog(
          context: context, title: 'エラー', discription: 'お気に入りの');
    }

    return;
  }

  Future<void> checkTimeline() async {
    // ignore: literal_only_boolean_expressions
    while (true) {
      try {
        final threads =await serverRepository.getGeoQuery(
            latitude: currentLatitude, longitude: currentLongitude, level: 8);
        if(threads!=null){
          context.read<TimelineNotifier>().updateTimeline(threads: threads);
          break;
        }

      } on Exception catch (e) {
        await showCustomDialog(
          context: context,
          title: 'エラー',
          discription: 'サーバに接続できません。',
        );
      }
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback(
      (_) async {
        if (isInitialized) {
          return;
        } else {
          isInitialized = true;
        }
        await checkAppStatus();
        await checkUser();
        await checkUserProfile();
        await checkPermission();
        await checkGeoLocation();
        await checkTimeline();
        await checkFavorites();
        await Navigator.of(context).pushReplacement(MaterialPageRoute<HomePage>(
            builder: (context) => HomePage.wrapped()));
      },
    );
    return const Scaffold();
  }
}
