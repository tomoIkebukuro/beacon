import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
/*
final authRepository = AuthRepository();

class AuthRepository {

  final instance =FirebaseAuth.instance;

  GoogleSignInAccount googleUser;

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    googleUser = await GoogleSignIn().signIn();

    if(googleUser==null){
      return null;
    }

    // Obtain the auth details from the request
    final googleAuth = await googleUser.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(credential);
  }


  Future<void> signOutWithGoogle()async{
    //googleUser.
    await instance.signOut();
  }
}
*/