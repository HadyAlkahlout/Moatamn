import 'package:flutter/material.dart';

import '../auth/AuthScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => const AuthScreen()),
          (r) {
        return false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: const Center(
          child: Image(
            image: AssetImage("assets/images/logo.png"),
          ),
        ),
      ),
    );
  }
}
