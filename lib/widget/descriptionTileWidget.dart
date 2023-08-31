import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionTile extends StatelessWidget {
  const DescriptionTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Text(
            "Description",
            style: GoogleFonts.titilliumWeb(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Text(
            'In the United States, Canada, the Republic of Ireland, and the United Kingdom, hiking means walking outdoors on a trail, or off trail, for recreational purposes.[6] A day hike refers to a hike that can be completed in a single day. However, in the United Kingdom, the word walking is also used, as well as rambling, while walking in mountainous areas is called hillwalking. In Northern England, Including the Lake District and Yorkshire Dales, fell walking describes hill or mountain walks, as fell is the common word for both features there.',
            textAlign: TextAlign.left,
            style: GoogleFonts.titilliumWeb(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}