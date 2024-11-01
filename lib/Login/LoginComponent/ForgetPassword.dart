import 'package:flutter/material.dart';

import '../../AdditionalWidgets/Logo.dart';
import '../../AdditionalWidgets/MyButton.dart';
import '../../AdditionalWidgets/MyButtonStyle.dart';
import '../../AdditionalWidgets/StyleForTextFormField.dart';
import 'VerificationCode.dart';

class ForgetPassword extends StatelessWidget {
  var number = '';
  String _phone = '';
  StyleForTextFormField styleFormField = StyleForTextFormField();
  final MyButtonStyle styleButton = MyButtonStyle();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Forget Password',
            style: TextStyle(
              color: Color(0xff1B2E3A),
              fontSize: 18,
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
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 25),
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
                    height: 25,
                  ),
                  const Text(
                    "Enter your phone to send your verification code",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: styleFormField.inputDecoration(
                      color: Colors.white,
                      labelText: 'Phone number',
                      hintText: '+20 1124242424',
                      icon: Icons.phone_android_outlined,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (value) {
                      _phone = value!;
                    },
                    validator: (value) {
                      if (value!.isEmpty || value.length != 13) {
                        return 'number starting with +20 number and 10 numbers';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: MyButton(
                      text: 'Submit',
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
                                  'verification code is sent successfully.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text(
                                      'OK',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(builder: (context) {
                                        return VerificationCode();
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
            ))));
  }
}
