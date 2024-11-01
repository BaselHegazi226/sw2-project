import 'package:flutter/material.dart';
import '../LoginModels/RegisterModel.dart';

class ComponentOfRegister extends StatelessWidget {
  const ComponentOfRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Login ',
          style: TextStyle(
            color: Color(0xff1B2E3A),
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            shadows: <Shadow>[
              Shadow(
                blurRadius: 3.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xff1B2E3A),
      body: RegisterModel(),
    );
  }
}
//Color(0xffD0D0D0) اللون البرونزي
