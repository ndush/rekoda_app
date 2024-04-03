import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationCubit extends Cubit<User?> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthenticationCubit() : super(null);

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(userCredential.user);
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuth errors
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      emit(null);
    } catch (e) {
      // Handle other exceptions
      print('Error occurred: $e');
      emit(null);
    }
  }
}
