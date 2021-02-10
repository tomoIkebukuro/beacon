import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/pages/set_profile/set_profile.dart';
import 'package:beacon_sns/pages/setting/setting_page.dart';
import 'package:beacon_sns/widgets/custom_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  Profile profile;
  ProfilePage(this.profile);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  String title;
  @override
  Widget build(BuildContext context) {
    //final Profile profile = widget.profile ?? userProfile;
    return Scaffold(
      appBar: AppBar(
        actions: [

          Offstage(
            offstage: userProfile.id == widget.profile,
            child: IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute<SettingPage>(
                    builder: (context) =>
                        SetProfilePage.wrapped(profile: widget.profile)));
              },
            ),
          ),

          SizedBox(
            width: 10,
          ),
        ],
        title: Text(
          'プロフィール',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomAvatar(url: userProfile.avatarUrl, size: 100),
            SizedBox(
              height: 60,
            ),
            Text(widget.profile.name)
          ],
        ),
      ),
    );
  }
}
