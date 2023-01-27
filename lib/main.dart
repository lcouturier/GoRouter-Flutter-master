import 'package:flutter/material.dart';
import 'package:lifecycle_aware_state/lifecycle_aware_state.dart';
import 'app/routes/app_routes.dart';

void main() {
  LifecycleAwareState.logSuffixedClassesOnly = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Go Router',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.black),
    );
  }
}
