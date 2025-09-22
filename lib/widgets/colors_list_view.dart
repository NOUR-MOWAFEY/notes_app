import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: isActive
          ? CircleAvatar(
              radius: 26,
              backgroundColor: Colors.white,
              child: CircleAvatar(radius: 24, backgroundColor: color),
            )
          : CircleAvatar(radius: 26, backgroundColor: color),
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
              setState(() {
                currentIndex = index;
              });
            },
            child: ColorItem(
              isActive: index == currentIndex,
              color: kColors[index],
            ),
          );
        },
      ),
    );
  }
}
