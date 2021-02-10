import 'package:beacon_sns/pages/initial/initial_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

const locale = Locale("ja", "JP");
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    LitAuthInit(
      authProviders: const AuthProviders(
        emailAndPassword: false, // enabled by default
        google: true,
        apple: true,
        anonymous: true,
        github: true,
        twitter: true,
      ),
      child: MaterialApp(
        locale: locale,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          locale,
        ],
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              elevation: 0,
              textTheme: ThemeData().textTheme.copyWith(
                  headline6: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              centerTitle: true,
              color: Colors.white,
            ),
            primaryIconTheme:
            ThemeData().primaryIconTheme.copyWith(color: Colors.deepOrange),
            floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.deepOrange),
            buttonTheme: const ButtonThemeData(
                buttonColor: Colors.deepOrange,
                textTheme: ButtonTextTheme.primary),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                selectedItemColor: Colors.deepOrange)),
        home: InitialPage(),
      ),
    )
  );
}
/// An example widget. This can be anything that you want to show after
/// succesful authentication
class YourAuthenticatedWidget extends StatelessWidget {
  const YourAuthenticatedWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context.getSignedInUser());
    return RaisedButton.icon(
      icon: Icon(Icons.lock_outline),
      onPressed: () {
        context.signOut();
      },
      label: Text("Sign out"),
    );
  }
}

/// A custom Sign-in widget built with Lit Firebase components
/*
class CustomSignInWidget extends StatelessWidget {
  const CustomSignInWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome', style: Theme.of(context).textTheme.headline4),

        // You need to wrap the custom sign-in widgets with a [SignInForm].
        // This is used to validate the email and password
        SignInForm(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'A custom form',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: EmailTextFormField(
                  decoration: InputDecoration(labelText: 'My Email Label'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PasswordTextFormField(
                  decoration: InputDecoration(labelText: 'My Password Label'),
                ),
              ),
              RaisedButton(
                onPressed: () async{
                  await context.signInWithGoogle();
                },
                child: Text('Sign In'),
              ),
              FlatButton(
                onPressed: () {
                  context.signInAnonymously();
                },
                child: Text('Anony Sign In'),
              ),
              FlatButton(
                onPressed: () {
                  context.signInWithGithub();
                },
                child: Text('Github Sign In'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
*/

/*
class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LitAuth.custom(
          child: CustomSignInWidget(),
        ),
      ),
    );
  }
}
*/

