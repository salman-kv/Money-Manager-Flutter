import 'dart:async';
import 'package:flutter/material.dart';
import 'package:moneymanager/screens/common_widget/money_manager.dart';
import 'package:moneymanager/screens/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return const LoginPage();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: moneymanager(40)),
    );
  }
}
