import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopDestinationTile extends StatelessWidget {
  const TopDestinationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
             padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Top destination",
            style: GoogleFonts.titilliumWeb(
              fontSize: 25,
              color: Colors.grey.shade900,
             
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SizedBox(
            height: 40,
            width: 40,
            child: Image.asset('assets/Images/filterIcon.png')),
        )
      ],
    );
  }
}
