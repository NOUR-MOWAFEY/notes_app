import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,

      decoration: InputDecoration(
        hintText: 'Title',
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(color: Colors.white),
      ),
    );
  }

  OutlineInputBorder customBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.grey, width: 2),
    );
  }
}
