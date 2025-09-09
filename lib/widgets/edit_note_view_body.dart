import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 24, right: 24, left: 24),
          child: Column(children: [CustomAppBar(title: 'Edit Note', icon: Icons.check,)]),
        ),
      ),
    );
  }
}
