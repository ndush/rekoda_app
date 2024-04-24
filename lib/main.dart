import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rekoda_app/features/account/profile_view.dart';
import 'package:rekoda_app/features/account/user_view.dart';
import 'package:rekoda_app/features/dashboard/new_user.dart';

import 'package:rekoda_app/features/launch/pages/get_started.dart';
import 'package:rekoda_app/features/launch/pages/launch.dart';
import 'package:rekoda_app/features/launch/pages/onboarding_1.dart';
import 'package:rekoda_app/features/launch/pages/onboarding_2.dart';
import 'package:rekoda_app/features/signup/bloc/authentication_cubit.dart';
import 'package:rekoda_app/features/signup/pages/email_verified.dart';
import 'package:rekoda_app/features/signup/pages/reg_form.dart';

import 'package:rekoda_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<AuthenticationCubit>(
          create: (_) => AuthenticationCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Rekoda App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            backgroundColor: const Color(0xFF680DB3),
            errorColor: const Color(0xFFB00020),
          ),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const LaunchPage(),
          '/onboarding_1': (context) => const Onboarding1(),
          '/onboarding_2': (context) => const Onboarding2(),
          '/get_started': (context) => const GetStarted(),
           '/email_verified': (context) => const EmailVerified(),
          '/form': (context) => const RegForm(),
          '/profile_view': (context) => const ProfileView(),
          '/user_view': (context) => const UserView(),
          '/new_user': (context) => const NewUser(),

        },
      ),
    );
  }
}
