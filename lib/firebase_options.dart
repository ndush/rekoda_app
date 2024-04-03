// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCQyiXD0vIQOZWqo0Kcd23kQNlBUakCFbE',
    appId: '1:548500342908:web:f65c0449d437f6874621f9',
    messagingSenderId: '548500342908',
    projectId: 'rekodaapp',
    authDomain: 'rekodaapp.firebaseapp.com',
    databaseURL: 'https://rekodaapp-default-rtdb.firebaseio.com',
    storageBucket: 'rekodaapp.appspot.com',
    measurementId: 'G-W2MNHT0VW6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBviHc-mYseGqmez257EpOt3GN59ikGKXg',
    appId: '1:548500342908:android:62680d905c6a3e704621f9',
    messagingSenderId: '548500342908',
    projectId: 'rekodaapp',
    databaseURL: 'https://rekodaapp-default-rtdb.firebaseio.com',
    storageBucket: 'rekodaapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDAP1iC8cmaV0YdZSbynxdPyfPQicNNEY8',
    appId: '1:548500342908:ios:8147739b9c777ed84621f9',
    messagingSenderId: '548500342908',
    projectId: 'rekodaapp',
    databaseURL: 'https://rekodaapp-default-rtdb.firebaseio.com',
    storageBucket: 'rekodaapp.appspot.com',
    iosBundleId: 'com.rekodaapp.rekodaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDAP1iC8cmaV0YdZSbynxdPyfPQicNNEY8',
    appId: '1:548500342908:ios:dc6ee949433fdf904621f9',
    messagingSenderId: '548500342908',
    projectId: 'rekodaapp',
    databaseURL: 'https://rekodaapp-default-rtdb.firebaseio.com',
    storageBucket: 'rekodaapp.appspot.com',
    iosBundleId: 'com.rekodaapp.rekodaApp.RunnerTests',
  );
}
