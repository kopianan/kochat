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
    apiKey: 'AIzaSyAdVa2FCnQ_RRokZ7mpqMGFTfHy7-hO3vM',
    appId: '1:508377489981:android:b517fc6677c2b2fc750054',
    messagingSenderId: '508377489981',
    projectId: 'kochat-12b25',
    storageBucket: 'kochat-12b25.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDHJ-8pwgxaAOh5_5epboDFZPQm4net-o',
    appId: '1:508377489981:ios:0eab401ebe8f1ede750054',
    messagingSenderId: '508377489981',
    projectId: 'kochat-12b25',
    storageBucket: 'kochat-12b25.appspot.com',
    androidClientId: '508377489981-49s1lef5pf0bhqtikrki4kkjqsk30lsh.apps.googleusercontent.com',
    iosClientId: '508377489981-16da74ctb8c0ar3ta022k027bcvt18l3.apps.googleusercontent.com',
    iosBundleId: 'com.kopianan.kopichat',
  );
}
