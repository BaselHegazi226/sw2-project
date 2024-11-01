import 'package:flutter/material.dart';
class IconsForHB extends StatelessWidget{
  final String image,text;
  final Color color;
  final VoidCallback onPressed;
  const IconsForHB({super.key, required this.image,required this.text, required this.color,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          const SizedBox(height: 8,),
          Row(
            children: [
              Text(
                textAlign: TextAlign.center,
                text ,
                style: TextStyle(
                    color: color,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(width: 8,),
              CircleAvatar(
                backgroundColor: color,
                radius: 30,
                child: Image.asset(image),
              ),
            ],
          ),
        ],
      ),
    );
  }
}