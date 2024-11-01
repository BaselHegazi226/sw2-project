import 'package:flutter/material.dart';
import '../../AdditionalWidgets/Logo.dart';
import '../../AdditionalWidgets/TextForHB.dart';

class ComponentOfSplash extends StatelessWidget {
  const ComponentOfSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B2E3A),
      appBar: AppBar(
        centerTitle: true,
        title: const TextForHB(
          text1: "HB ",
          color1: Color(0xffFF914D),
          size1: 25,
          text2: "E-Library",
          color2: Color(0xff1B2E3A),
          size2: 25,
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyLogo(
            radius1: 145,
            radius2: 135,
          ),
          SizedBox(height: 15),
           TextForHB(
            text1: "Our ",
            color1: Color(0xffFF914D),
            size1: 45,
            text2: "Library",
            color2: Colors.white,
            size2: 40,
          ),
           TextForHB(
            text1: "Welcomes ",
            color1: Colors.white,
            size1: 50,
            text2: "You",
            color2: Color(0xffFF914D),
            size2: 55,
          ),
        ],
      ),
    );
  }
}