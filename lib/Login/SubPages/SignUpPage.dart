import 'package:flutter/material.dart';
import '../LoginComponent/SignUp.dart';

class SignUp extends StatefulWidget{
  const SignUp({super.key});

  @override
  State<StatefulWidget> createState()=>_SignUp();
}
class _SignUp extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  ComponentOfSignUp();
  }
}

