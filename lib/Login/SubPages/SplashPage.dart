import 'package:flutter/material.dart';
import '../LoginComponent/Splash.dart';
import 'RegisterPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashState();
}

class _SplashState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToRegisterPageAfterDelay();
  }

  void _navigateToRegisterPageAfterDelay() async {
    await Future.delayed(const Duration(seconds: 20));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const RegisterPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const ComponentOfSplash();
  }
}
