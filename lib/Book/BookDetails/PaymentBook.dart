import 'package:flutter/material.dart';

import '../../AdditionalWidgets/Logo.dart';
import '../../AdditionalWidgets/MyButton.dart';
import '../../AdditionalWidgets/MyButtonStyle.dart';
import '../../AdditionalWidgets/StyleForTextFormField.dart';

class PaymentBook extends StatefulWidget {
  const PaymentBook({super.key});

  @override
  _PaymentBookState createState() => _PaymentBookState();
}

class _PaymentBookState extends State<PaymentBook> {
  final _formKey = GlobalKey<FormState>();
  String _cardNumber = '';
  String _expiryDate = '';
  String _cvv = '';
  final StyleForTextFormField styleFormField = StyleForTextFormField();
  final MyButtonStyle styleButton = MyButtonStyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B2E3A),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Payment Details',
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
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const MyLogo(
                radius1: 135,
                radius2: 125,
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: styleFormField.inputDecoration(
                  color: Colors.white,
                  labelText: 'Card Number',
                  hintText: '1234 5678 9012 3456',
                  icon: Icons.credit_card,
                ),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.text,
                onSaved: (cardNumber) {
                  _cardNumber = cardNumber!;
                },
                validator: (cardNumber) {
                  if (cardNumber!.isEmpty || cardNumber.length < 16) {
                    return 'Please enter a valid card number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: styleFormField.inputDecoration(
                  color: Colors.white,
                  labelText: 'Expiry Date',
                  hintText: 'MM/YY',
                  icon: Icons.date_range,
                ),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.datetime,
                onSaved: (value) {
                  _expiryDate = value!;
                },
                validator: (value) {
                  if (value!.isEmpty ||
                      !value.contains('/') ||
                      value.length != 5) {
                    return 'The correct style is month/year/day : 11/2001/5 ';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: styleFormField.inputDecoration(
                  color: Colors.white,
                  labelText: 'CVV',
                  hintText: '123',
                  icon: Icons.verified,
                ),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  _cvv = value!;
                },
                validator: (value) {
                  if (value!.isEmpty || value.length != 3) {
                    return 'Please enter a valid CVV';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 40),
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
                            content: const Text(
                              'Payment information is saved successfully ! and the order will reach in some hours *',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text(
                                  'OK',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();
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
