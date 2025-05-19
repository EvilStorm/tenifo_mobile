import 'package:court/utils/size_scale.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screen/court_search/court_screen.dart';

void main() async {
  const FirebaseOptions firebaseOptions = FirebaseOptions(
    apiKey: 'AIzaSyDcQIfupgPR3Z-3lJEWVehcJ-KSWB5jRlw',
    appId: '1:192256508917:web:749b3ea77a8673bf0d16bc',
    messagingSenderId: '192256508917',
    projectId: 'court-infos',
    authDomain: 'court-infos.firebaseapp.com',
    storageBucket: 'court-infos.appspot.com',
    measurementId: 'G-XEQZZ2RP9C',
  );

  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(options: firebaseOptions);
  } else {
    await Firebase.initializeApp();
  }

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // if (!SizeScale.isInitialized) {
    SizeScale.instance.init(context);
    // }

    return MaterialApp(
      navigatorObservers: [FirebaseAnalyticsObserver(analytics: analytics)],
      home: CourtScreen(),
    );
  }
}
