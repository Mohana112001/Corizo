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
    apiKey: 'AIzaSyCGw0gcrSDN8ncACiQSqgt-8D9LoiE7qsw',
    appId: '1:172195863546:web:f2278402a75f95c2292243',
    messagingSenderId: '172195863546',
    projectId: 'registrationform-98335',
    authDomain: 'registrationform-98335.firebaseapp.com',
    storageBucket: 'registrationform-98335.firebasestorage.app',
    measurementId: 'G-F5HMEWWYCD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4uTbl4xaa2SSDKMLogawj6mcWcT5Q8-8',
    appId: '1:172195863546:android:ff4d83ab6f5f7e05292243',
    messagingSenderId: '172195863546',
    projectId: 'registrationform-98335',
    storageBucket: 'registrationform-98335.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWBq2LMEI-KcaThnSc7skmXg1DN0j8LiM',
    appId: '1:172195863546:ios:f628f2a495bd446a292243',
    messagingSenderId: '172195863546',
    projectId: 'registrationform-98335',
    storageBucket: 'registrationform-98335.firebasestorage.app',
    iosBundleId: 'com.microsoft.registrationformapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWBq2LMEI-KcaThnSc7skmXg1DN0j8LiM',
    appId: '1:172195863546:ios:f628f2a495bd446a292243',
    messagingSenderId: '172195863546',
    projectId: 'registrationform-98335',
    storageBucket: 'registrationform-98335.firebasestorage.app',
    iosBundleId: 'com.microsoft.registrationformapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCGw0gcrSDN8ncACiQSqgt-8D9LoiE7qsw',
    appId: '1:172195863546:web:e06a67b3024df95c292243',
    messagingSenderId: '172195863546',
    projectId: 'registrationform-98335',
    authDomain: 'registrationform-98335.firebaseapp.com',
    storageBucket: 'registrationform-98335.firebasestorage.app',
    measurementId: 'G-1KESH5XSFT',
  );
}