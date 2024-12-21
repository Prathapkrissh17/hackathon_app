import 'package:flutter/material.dart';
import 'package:hackathon_app/src/features/login/onboarding_page.dart';

import 'common/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musixmatch',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        textTheme: AppTheme.appTextTheme,
        appBarTheme: AppTheme.appBarTheme,
      ),
      home: const OnBoardingPage(),
    );
  }
}
