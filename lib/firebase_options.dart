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
    apiKey: 'AIzaSyDITCcqFOQEp072MyorwLGWhxpzV0rdceM',
    appId: '1:864788036114:web:b994c8b91f415f095936cb',
    messagingSenderId: '864788036114',
    projectId: 'pruebafinal-4d9ce',
    authDomain: 'pruebafinal-4d9ce.firebaseapp.com',
    storageBucket: 'pruebafinal-4d9ce.appspot.com',
    measurementId: 'G-W0GB1DJH4Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCJiSU0b6DQnDstYv-zXwXf2--DlIaRNg',
    appId: '1:864788036114:android:39b8870c6e27942a5936cb',
    messagingSenderId: '864788036114',
    projectId: 'pruebafinal-4d9ce',
    storageBucket: 'pruebafinal-4d9ce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDORKHDWbEY4GrBAGjLzBOeyXWeZoDC5P8',
    appId: '1:864788036114:ios:a8031215b9c6d9795936cb',
    messagingSenderId: '864788036114',
    projectId: 'pruebafinal-4d9ce',
    storageBucket: 'pruebafinal-4d9ce.appspot.com',
    iosBundleId: 'com.example.flutterend',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDORKHDWbEY4GrBAGjLzBOeyXWeZoDC5P8',
    appId: '1:864788036114:ios:8b556e156639947c5936cb',
    messagingSenderId: '864788036114',
    projectId: 'pruebafinal-4d9ce',
    storageBucket: 'pruebafinal-4d9ce.appspot.com',
    iosBundleId: 'com.example.flutterend.RunnerTests',
  );
}
