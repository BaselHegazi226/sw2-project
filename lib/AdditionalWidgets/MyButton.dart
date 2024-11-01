import 'package:flutter/material.dart';
import 'MyButtonStyle.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final MyButtonStyle styleButton = MyButtonStyle();

   MyButton({super.key,required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: styleButton.getStyle(),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(text),
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'MyButtonStyle.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Widget goTo;
  final MyButtonStyle styleButton = MyButtonStyle();
   MyButton({super.key,required this.text,required this.goTo});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: styleButton.getStyle(),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return goTo;
          },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(text),
      ),
    );
  }
}





 */