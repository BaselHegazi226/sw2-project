import 'package:flutter/material.dart';
import '../../AdditionalWidgets/Logo.dart';
import '../../AdditionalWidgets/MyButton.dart';
import '../../AdditionalWidgets/StyleForTextFormField.dart';
import '../LoginComponent/ForgetPassword.dart';
import '../SubPages/HomePage.dart';
import '../SubPages/SignUpPage.dart';

class RegisterModel extends StatelessWidget{

   RegisterModel({super.key});

  final StyleForTextFormField style =  StyleForTextFormField();
   final _formKey = GlobalKey<FormState>();
  String _email='';
  String _password ='';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // Wrap your Column in a SingleChildScrollView
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
              child: Column(
                children: [
                  const MyLogo(radius1:135 ,radius2: 125,),
                  const SizedBox(height: 20),
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
                    onSaved: (email){
                      _email=email!;
                    },
                    validator: (email){
                      if(email!.isEmpty || !email!.contains('@gmail.com')){
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
                      icon: Icons.lock,
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.text,
                    onSaved: (password){
                      _password=password!;
                    },
                    validator: (password){
                      if(password!.isEmpty ){
                        return 'Empty password ! Enter the password please ';
                      }
                      return null;
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ForgetPassword())
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forget Password ?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: MyButton(
                          text: 'Login',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: const Color(0xff1B2E3A),
                                    content: const Text(
                                      'Go to Home ',
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
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                            return const HomePage();
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
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const SignUp())
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Do You Not Have an Account ?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}