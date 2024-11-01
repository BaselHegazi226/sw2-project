import 'package:flutter/material.dart';
class TextForHB extends StatelessWidget{
  final String text1,text2;
  final Color color1,color2;
  final double size1,size2;
  const TextForHB({
    required this.text1,required this.color1,required this.size1,
    required this.text2,required this.color2,required this.size2});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text1,
              style: TextStyle(
                color: color1,//Color(0xffFB8F4C)
                fontWeight: FontWeight.w900,
                fontSize: size1,//25
              ),
            ),
            Text(
              text2,
              style: TextStyle(
                color:color2 ,//Color(0xff1E3441)
                fontWeight: FontWeight.w700,
                fontSize:size2 ,//25
              ),
            ),
          ],
        ),
      ],
    );
  }
}