import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String?> signUpWithEmailAndPassword(String emailAddress, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return userCredential.user?.uid;
    } catch (e) {
      print('Failed to sign up user: $e');
      return null;
    }
  }

  Future<String?> signInWithEmailAndPassword(String emailAddress, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return userCredential.user?.uid;
    } catch (e) {
      print('Failed to sign in user: $e');
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      print('Failed to sign out user: $e');
    }
  }

  Future<User?> getCurrentUser() async {
    return _firebaseAuth.currentUser;
  }

}
