import 'package:flutter/material.dart';
import 'package:moneymanager/screens/splash_screen.dart';
import 'package:moneymanager/theme/theme_constants.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money Manager',
      theme: lightTheme,
      home: SplashScreen(),
    );
  }
}
