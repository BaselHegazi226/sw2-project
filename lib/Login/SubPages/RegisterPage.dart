import 'package:flutter/material.dart';
import '../LoginComponent/Register.dart';
class RegisterPage extends StatefulWidget{
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState()=>_RegisterPage();
}
class _RegisterPage extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return const ComponentOfRegister();

  }
}
