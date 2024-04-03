import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CreateAccountCubit extends Cubit<User?> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  CreateAccountCubit() : super(null);

  void signUpWithEmailAndPassword(String email, String password) async {
    try {
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(userCredential.user);
    } catch (e) {
      emit(null);
    }
  }
}
