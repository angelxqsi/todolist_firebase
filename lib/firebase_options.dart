// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBvwuUAbbcEYsb4WF7r7bmmWlZjlsVf45k',
    appId: '1:599101142156:web:88c2a425bbf3c6212b77a9',
    messagingSenderId: '599101142156',
    projectId: 'todolist-firebase-36d10',
    authDomain: 'todolist-firebase-36d10.firebaseapp.com',
    storageBucket: 'todolist-firebase-36d10.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2fIoGkAVKev6U79DOn3mJ1nKRzRGNqpk',
    appId: '1:599101142156:android:a80285fe3d878f9d2b77a9',
    messagingSenderId: '599101142156',
    projectId: 'todolist-firebase-36d10',
    storageBucket: 'todolist-firebase-36d10.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBSE3B0oaoAp51_COgeALJtNjxBEdwu_cs',
    appId: '1:599101142156:ios:9bbc308185270c202b77a9',
    messagingSenderId: '599101142156',
    projectId: 'todolist-firebase-36d10',
    storageBucket: 'todolist-firebase-36d10.appspot.com',
    iosBundleId: 'com.example.todolistFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBSE3B0oaoAp51_COgeALJtNjxBEdwu_cs',
    appId: '1:599101142156:ios:9bbc308185270c202b77a9',
    messagingSenderId: '599101142156',
    projectId: 'todolist-firebase-36d10',
    storageBucket: 'todolist-firebase-36d10.appspot.com',
    iosBundleId: 'com.example.todolistFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBvwuUAbbcEYsb4WF7r7bmmWlZjlsVf45k',
    appId: '1:599101142156:web:2a9400e483d8a8c12b77a9',
    messagingSenderId: '599101142156',
    projectId: 'todolist-firebase-36d10',
    authDomain: 'todolist-firebase-36d10.firebaseapp.com',
    storageBucket: 'todolist-firebase-36d10.appspot.com',
  );

}