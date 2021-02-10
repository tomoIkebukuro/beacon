import 'dart:io';

import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/pages/set_thread/set_thread_state.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:uuid/uuid.dart';

class SetThreadNotifier extends StateNotifier<SetThreadState> {
  SetThreadNotifier({this.defaultImageUrl}) : super(const SetThreadState());
  String defaultImageUrl;

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
      final id =Uuid().v4();
      final thread = Thread(id:id,authorProfile: userProfile,name: state.name);
      await serverRepository.set(
        id: id,
        path: 'threads',
        data: thread.toJson(),
      );
      Navigator.of(context).pop();
    } on Exception catch (e) {
      await showCustomDialog(
          context: context, title: 'エラー', discription: 'ビーコンの設置に失敗しました。');
    }

    return;
  }

  bool checkIsSetButtonAvailable() {
    return  (state.name??'').isNotEmpty;
  }
}
