import 'package:flutter/material.dart';

class TopNavigation extends StatelessWidget {
  const TopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade300,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset("assets/Images/userIcon.png"),
          ),
        ),  Spacer(),
        SizedBox(
            height: 35,
            width: 35,
            child: Image.asset("assets/Images/menuIcon.png"))
      ],
    );
  }
}
