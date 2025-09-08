import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
        child: Column(
          children: [
            CustomTextField(hintText: 'title'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'content', maxLines: 5),
            SizedBox(height: 48),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
