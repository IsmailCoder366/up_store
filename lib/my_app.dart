import 'package:flutter/material.dart';
import 'package:up_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:up_store/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: UAppTheme.lightTheme,
        darkTheme: UAppTheme.darkThem,
        home: OnboardingScreen()
    );
  }
}