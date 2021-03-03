import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/pages/initial/initial_page.dart';
import 'package:beacon_sns/repository/auth.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RaisedButton(
              child: Text('delete all'),
              onPressed: () {
                serverRepository.deleteAllThread(path: 'threads');
              },
            ),
            RaisedButton(
              child: Text('signout'),
              onPressed: () async {
                await authRepository.signOutWithGoogle();
                userProfile=Profile();
                await Navigator.of(context).pushReplacement(
                    MaterialPageRoute<InitialPage>(
                        builder: (_) => InitialPage()));
              },
            ),
            RaisedButton(
              child: Text('delete profile'),
              onPressed: () async{
                await serverRepository.deleteProfile();
                //await authRepository.signOutWithGoogle();
                await Navigator.of(context).pushReplacement(
                    MaterialPageRoute<InitialPage>(
                        builder: (_) => InitialPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
