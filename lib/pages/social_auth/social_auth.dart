import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/pages/set_profile/set_profile_notifier.dart';
import 'package:beacon_sns/repository/auth.dart';
import 'package:firebase_auth_oauth/firebase_auth_oauth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SocialAuthPage extends StatelessWidget {
  Future<void> performLogin(String provider, List<String> scopes,
      Map<String, String> parameters) async {
    try {
      await FirebaseAuthOAuth().openSignInFlow(provider, scopes, parameters);
    } catch (error) {
      /**
       * The plugin has the following error codes:
       * 1. FirebaseAuthError: FirebaseAuth related error
       * 2. PlatformError: An platform related error
       * 3. PluginError: An error from this plugin
       */
      debugPrint("${error.code}: ${error.message}");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              child: SvgPicture.asset(
                'assets/beacon1.svg',
                color: Colors.deepOrange,
              ),
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'BEACON',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 100,),
            SignInButton(
              Buttons.GoogleDark,
              onPressed: () async {
                try {
                  //await context.signInWithGoogle();
                  await authRepository.signInWithGoogle();
                } catch (e) {
                  await showCustomDialog(
                      context: context,
                      title: 'エラー',
                      discription: e.toString());
                }
                Navigator.of(context).pop();
              },
            ),
            SignInButton(
              Buttons.Twitter,
              onPressed: () async {
                await performLogin(
                    "twitter.com", ["email"], {"lang": "ja"});
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
