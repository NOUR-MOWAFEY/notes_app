import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });

  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Required Field';
        }
        return null;
      },
      onSaved: onSaved,
      cursorColor: Colors.white,
      maxLines: maxLines,
      decoration :   InputDecoration(
        hintText: hintText,
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(color: Colors.white),
      ),
    );
  }

  OutlineInputBorder customBorder({Color? color}) {
    return  OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide:  BorderSide(color: color ?? Colors.grey, width: 2),
    );
  }
}
