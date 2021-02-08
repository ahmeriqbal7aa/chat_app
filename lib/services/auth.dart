import 'package:chat_app/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Set uid to "UserOfFirebase" Class
  UserOfFirebase _userFromFirebaseUser(User firebaseUser) {
    return firebaseUser != null
        ? UserOfFirebase(userId: firebaseUser.uid)
        : null;
  }

  Future signInWithEmailAndPassword(String email, String pwd) async {
    try {
      UserCredential credential =
          await _auth.signInWithEmailAndPassword(email: email, password: pwd);
      User firebaseUser = credential.user;
      return _userFromFirebaseUser(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signUpWithEmailAndPassword(String email, String pwd) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: pwd);
      User firebaseUser = credential.user;
      return _userFromFirebaseUser(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future resetPassword(String email) async {
    try {
      return await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signOut(String email) async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
