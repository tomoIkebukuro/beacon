import 'dart:io';
import 'dart:math';

import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/pages/set_thread/set_thread_state.dart';
import 'package:beacon_sns/providers.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SetThreadNotifier extends StateNotifier<SetThreadState> {
  SetThreadNotifier({this.defaultImageUrl, @required this.serverRepository})
      : super(const SetThreadState());
  String defaultImageUrl;
  ServerRepository serverRepository;

  // Done
  void onNameChanged(String name) {
    state = state.copyWith(name: name);
    state = state.copyWith(
      isSetButtonAvailable: checkIsSetButtonAvailable(),
    );
  }

  Future<void> onSetButtonPressed(BuildContext context) async {
    try {
      if (!checkIsSetButtonAvailable()) {
        return;
      }
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: const Duration(milliseconds: 5000),
      );
      final thread = Thread.fromLatLong(
        buzz: 0,
        authorProfile: userProfile,
        name: state.name,
        latitude: position.latitude,
        longitude: position.longitude,
      );
      await serverRepository.set(
        id: thread.id,
        path: 'threads',
        data: thread.toJson(),
      );
      await showDialog<void>(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("タイトル"),
            //content: Text("メッセージメッセージメッセージメッセージメッセージメッセージ"),
            actions: <Widget>[
              // ボタン領域
              FlatButton(
                child: Text("更新しない"),
                onPressed: () => Navigator.pop(context),
              ),
              FlatButton(
                child: Text("更新する"),
                onPressed: () async{
                  final level=context.read(geoQueryRangeProvider.state).level;
                  final sortWith=context.read(sortWithProvider.state).sortWith;
                  await context.read(timelineProvider).update(
                        currentLatitude: currentLatitude,
                        currentLongitude: currentLongitude,
                        level: level,
                        sortWith: sortWith,
                      );
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
      Navigator.of(context).pop();
    } on Exception catch (e) {
      print(e);
      await showCustomDialog(
          context: context, title: 'エラー', discription: 'ビーコンの設置に失敗しました。');
      return;
    }

    return;
  }

  bool checkIsSetButtonAvailable() {
    return (state.name ?? '').isNotEmpty;
  }
}
