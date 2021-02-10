import 'dart:io';

import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/pages/set_profile/set_profile_state.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:state_notifier/state_notifier.dart';

class SetProfileNotifier extends StateNotifier<SetProfileState> {
  SetProfileNotifier({this.profile})
      : super(
          SetProfileState(name: profile?.name),
        );
  final Profile profile;

  // Done
  Future<void> onChangeAvatarButtonPressed(BuildContext context) async {
    PickedFile pickedFile;
    try {
      pickedFile = await ImagePicker().getImage(source: ImageSource.gallery);
    } on Exception catch (e) {
      await showCustomDialog(
        context: context,
        title: 'エラー',
        discription: '写真の選択に失敗しました。権限を許可してください。',
      );
    }
    if (pickedFile != null) {
      state = state.copyWith(file: File(pickedFile.path));
      state = state.copyWith(
        isSaveButtonAvailable: checkIsSaveButtonAvailable(),
      );
    }
    return;
  }

  // Done
  void onNameChanged(String name) {
    state = state.copyWith(name: name);
    state = state.copyWith(
      isSaveButtonAvailable: checkIsSaveButtonAvailable(),
    );
  }

  Future<void> onSaveButtonPressed(BuildContext context) async {
    try {
      if (!checkIsSaveButtonAvailable()) {
        return;
      }
      String url;
      if (state.file != null) {
        url = await serverRepository.putFile(file: state.file);
      }
      final profile = Profile(
        name: state.name,
        avatarUrl: url,
      );
      await serverRepository.set(
        path: 'profiles',
        data: profile.toJson(),
        id: userProfile.id,
      );
      Navigator.of(context).pop();
    } on Exception catch (e) {
      await showCustomDialog(
          context: context, title: 'エラー', discription: 'プロフィールの登録に失敗しました。');
    }

    return;
  }

  bool checkIsSaveButtonAvailable() {
    if(profile==null){
      if((state.name??'').isEmpty){
        return false;
      }
    }
    else{
      if((state.name??'').isEmpty){
        return false;
      }
      if(state.name == profile.name && state.file==null){
        return false;
      }
      return true;
    }
  }
}
