import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 28),
      decoration: BoxDecoration(
        color: const Color.fromARGB(242, 255, 199, 115),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Flutter Tips',
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 12),
              child: Text(
                'Build your career with nour mowafey',
                style: TextStyle(color: Colors.black38, fontSize: 18),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.trash, color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 6),
            child: Text(
              'May21,2022',
              style: TextStyle(color: Colors.black38, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
