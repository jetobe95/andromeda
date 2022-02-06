import 'package:andromeda/pages/home_page.dart';
import 'package:andromeda/pages/onboarding_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andromeda app',
      routes: {
        '/': (_) => const OnboardingPage(),
        '/home': (_) => const HomePage(),
      },
      initialRoute: '/',
    );
  }
}
