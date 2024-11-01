import 'package:flutter/material.dart';

import '../../AdditionalWidgets/Logo.dart';
import '../../AdditionalWidgets/MyButton.dart';
import '../../AdditionalWidgets/StyleForTextFormField.dart';
import '../SubPages/RegisterPage.dart';

class ComponentOfSignUp extends StatelessWidget {
  final StyleForTextFormField style = StyleForTextFormField();
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _email = '';
  String _password = '';
  ComponentOfSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Sign up ',
          style: TextStyle(
            color: Color(0xff1B2E3A),
            fontSize: 20,
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
        iconTheme: const IconThemeData(size: 25, color: Color(0xff1B2E3A)),
      ),
      backgroundColor: const Color(0xff1B2E3A),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const MyLogo(
                    radius1: 115,
                    radius2: 105,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: style.inputDecoration(
                      color: Colors.white,
                      labelText: 'First name',
                      hintText: 'first name',
                      icon: Icons.person,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (firstName) {
                      _firstName = firstName!;
                    },
                    validator: (firstName) {
                      if (firstName!.isEmpty) {
                        return 'The first name is required ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: style.inputDecoration(
                      color: Colors.white,
                      labelText: 'Last name',
                      hintText: 'last name',
                      icon: Icons.family_restroom,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (lastName) {
                      _lastName = lastName!;
                    },
                    validator: (lastName) {
                      if (lastName!.isEmpty) {
                        return 'The last name is required ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: style.inputDecoration(
                      color: Colors.white,
                      labelText: 'Email',
                      hintText: 'name@gmail.com',
                      icon: Icons.email,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (email) {
                      _email = email!;
                    },
                    validator: (email) {
                      if (email!.isEmpty || !email!.contains('@gmail.com')) {
                        return 'The Email is name@gmail.com';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: style.inputDecoration(
                      color: Colors.white,
                      labelText: 'Password',
                      hintText: '3423434#Ds',
                      icon: Icons.lock_outline_rounded,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (password) {
                      _password = password!;
                    },
                    validator: (password) {
                      if (password!.isEmpty) {
                        return 'Empty password ! Enter the password please ';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: MyButton(
                      text: 'Register',
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                backgroundColor: const Color(0xff1B2E3A),
                                title: const Text(
                                  'Success',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                content: const Text(
                                  'Register Information is saved successfully. ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text(
                                      'OK',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return const RegisterPage();
                                      }));
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
