import 'package:flutter/material.dart';

class AboutBook extends StatelessWidget{
  const AboutBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 25,
      color: Colors.white,
      child: const Text('about book',
        style: TextStyle(
          color: Color(0xff1B2E3A),
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}