import 'package:flutter/material.dart';

class StyleForTextFormField {
  InputDecoration inputDecoration(
      {
        String labelText = '',
        String hintText = '',
        IconData icon = Icons.star,
        Color color = Colors.white,
      }) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      hintStyle: TextStyle(
        color: color,
        fontWeight: FontWeight.bold
      ),
      labelStyle: TextStyle(
        color: color,
          fontWeight: FontWeight.w500
      ),
      prefixIcon: Icon(
        icon,
        color: color,
      ),
      errorStyle: const TextStyle(
            color: Colors.redAccent,
            fontSize: 15,
            fontWeight: FontWeight.w500,
        ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color,  // Changed to dynamic color from 'const BorderSide'
          width: 3,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color,
          width: 3,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color,  // Changed to dynamic color from 'const BorderSide'
          width: 3,
        ),
      ),
    );
  }
}
