import 'dart:io';
import 'dart:math';

import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/pages/set_profile/set_profile_notifier.dart';
import 'package:beacon_sns/pages/set_profile/set_profile_state.dart';
import 'package:beacon_sns/widgets/custom_avatar.dart';
import 'package:beacon_sns/widgets/custom_flat_button.dart';
import 'package:beacon_sns/widgets/custom_textform_field.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class SetProfilePage extends StatefulWidget {
  // TODO: profileをProviderで渡す
  const SetProfilePage({this.profile});
  final Profile profile;
  static Widget wrapped({Profile profile}) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<SetProfileNotifier, SetProfileState>(
          create: (context) => SetProfileNotifier(),
        ),
      ],
      child: SetProfilePage(
        profile: userProfile,
      ),
    );
  }

  @override
  _SetProfilePageState createState() => _SetProfilePageState();
}

class _SetProfilePageState extends State<SetProfilePage> {
  final _formKey = GlobalKey<FormState>();
  File file;
  bool isSaveButtonAvailable = false;

  @override
  Widget build(BuildContext context) {
    print(widget.profile);
    final state = context.watch<SetProfileState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'プロフィール登録',
            style: TextStyle(color: Colors.grey[700]),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              CustomAvatar(
                  file: file, url: widget.profile?.avatarUrl, size: 100),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () => context
                    .read<SetProfileNotifier>()
                    .onChangeAvatarButtonPressed(context),
                child: const Text(
                  '写真を変更する',
                  style: TextStyle(fontSize: 14, color: Colors.deepOrange),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                key: _formKey,
                child: CustomTextFormField(
                  hintText: '名前',
                  intialValue: widget.profile?.name,
                  maxLength: 30,
                  onChanged: (value) {
                    context.read<SetProfileNotifier>().onNameChanged(value);
                  },
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              RaisedButton(
                child: const Text(
                  '保存',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: state.isSaveButtonAvailable
                    ? () => context
                        .read<SetProfileNotifier>()
                        .onSaveButtonPressed(context)
                    : null,
              ),
            ],
            mainAxisSize: MainAxisSize.min,
          ),
        ),
      ),
    );
  }
}
