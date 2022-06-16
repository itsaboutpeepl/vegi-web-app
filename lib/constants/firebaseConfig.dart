import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        apiKey: 'AIzaSyDg5GfOmBR_gYVSEws6pLd1A8P78d6PysI',
        appId: '1:526129377:ios:69d1fac6f1aad59370bfa0',
        messagingSenderId: '526129377',
        projectId: 'vegiliverpool',
        iosBundleId: 'com.vegi.vegiapp',
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      // Android
      return const FirebaseOptions(
        apiKey: 'AIzaSyCILrC5LxZtzfazC4WaCPilQoZPRaTl9_U',
        appId: '1:526129377:android:69d1fac6f1aad59370bfa0',
        projectId: 'vegiliverpool',
        messagingSenderId: '526129377',
      );
    } else {
      return const FirebaseOptions(
          apiKey: "AIzaSyB9hAjm49_3linYAcDkkEYijBiCoObXYfk",
          authDomain: "vegiliverpool.firebaseapp.com",
          projectId: "vegiliverpool",
          storageBucket: "vegiliverpool.appspot.com",
          messagingSenderId: "526129377",
          appId: "1:526129377:web:a0e4d54396cbdebe70bfa0",
          measurementId: "G-YZCWVWRNKN");
    }
  }
}
