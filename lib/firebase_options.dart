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
    apiKey: 'AIzaSyDEmRxpXuB0tJedmp4HQ3nMJJbo9iLmIgU',
    appId: '1:699964367826:web:2ff18ce36c4c1f8f6a9e0b',
    messagingSenderId: '699964367826',
    projectId: 'firestore-pothole-app',
    authDomain: 'firestore-pothole-app.firebaseapp.com',
    storageBucket: 'firestore-pothole-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5Wl2hDFx-YfXqT-8C8rcdy2oTIdpJ2TA',
    appId: '1:699964367826:android:33634fcfc2a1b3736a9e0b',
    messagingSenderId: '699964367826',
    projectId: 'firestore-pothole-app',
    storageBucket: 'firestore-pothole-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAp_7dlmyRjDyUi4K7EwfsCj5VNABswGes',
    appId: '1:699964367826:ios:c820cb7f3f8b794a6a9e0b',
    messagingSenderId: '699964367826',
    projectId: 'firestore-pothole-app',
    storageBucket: 'firestore-pothole-app.appspot.com',
    iosClientId: '699964367826-85prpftemm94p34kc5r3cvjs6nkvarqp.apps.googleusercontent.com',
    iosBundleId: 'com.mezops.potholeApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAp_7dlmyRjDyUi4K7EwfsCj5VNABswGes',
    appId: '1:699964367826:ios:c820cb7f3f8b794a6a9e0b',
    messagingSenderId: '699964367826',
    projectId: 'firestore-pothole-app',
    storageBucket: 'firestore-pothole-app.appspot.com',
    iosClientId: '699964367826-85prpftemm94p34kc5r3cvjs6nkvarqp.apps.googleusercontent.com',
    iosBundleId: 'com.mezops.potholeApp',
  );
}
