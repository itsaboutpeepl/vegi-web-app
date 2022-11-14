import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:vegan_liverpool/constants/firebase_options.dart';

@module
abstract class FirebaseInjectableModule {
  @preResolve
  Future<FirebaseApp> get firebaseApp =>
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics.instance;
}
