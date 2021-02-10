import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/repository/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class SocialAuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LitAuth.custom(
        child: SignInForm(
          child: Center(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 80,
                ),
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
                Expanded(child: Container()),
                Container(
                  child: ,
                ), /*
                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 140),
                  width: double.infinity,
                  child: SignInButton(
                    Buttons.GoogleDark,
                    onPressed: () async {
                      try {
                        await context.signInWithGoogle();
                        //await authRepository.signInWithGoogle();
                      } catch (e) {
                        await showCustomDialog(
                            context: context,
                            title: 'エラー',
                            discription: e.toString());
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
