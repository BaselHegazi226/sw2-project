import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget{
  final double radius1 ,radius2 ;
  const MyLogo({super.key,required this.radius1,required this.radius2});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: radius1,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: radius2,
          backgroundColor: const Color(0xff1E3441),
          child: Image.asset('assets/Images/Logo For The App (1).png'),
        ),
      ),
    );
  }
}