import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  final String path;
  final String title;
  final Color color;
  const CategoryWidget({
    super.key,
    required this.title,
    required this.color,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(path),
          ),
        ),
        Text(
          title,
          style: GoogleFonts.titilliumWeb(
            fontSize: 18,
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        )
      ],
    );
  }
}
