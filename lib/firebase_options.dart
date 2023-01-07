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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQVYL5Zw67nzPk-3T8HEEBABg6W7-UEl4',
    appId: '1:722070310579:android:d085314574c51cdea72ac6',
    messagingSenderId: '722070310579',
    projectId: 'rofl-684b1',
    databaseURL: 'https://rofl-684b1.firebaseio.com',
    storageBucket: 'rofl-684b1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCkWB8Mcc6-Kx_-42Fcu0Hx5FjxYaNjsHE',
    appId: '1:722070310579:ios:ab9e4fe7ffc2fc60a72ac6',
    messagingSenderId: '722070310579',
    projectId: 'rofl-684b1',
    databaseURL: 'https://rofl-684b1.firebaseio.com',
    storageBucket: 'rofl-684b1.appspot.com',
    androidClientId: '722070310579-fhvnf8a3rgfrnmfecms34ic66gq7sg68.apps.googleusercontent.com',
    iosClientId: '722070310579-0uvstr6hpp1qejic9tatuvd6i1j8biht.apps.googleusercontent.com',
    iosBundleId: 'com.example.rofl',
  );
}
