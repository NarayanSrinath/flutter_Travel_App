import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/Screens/destails_page.dart';

class LocationDetailsTile extends StatelessWidget {
  const LocationDetailsTile({
    super.key,
    required this.widget,
  });

  final DetailsPage widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              width: 180,
              color: Colors.amber.shade100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/Images/directionsIcon.png')),
                  Text(
                    widget.data.location,
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 15,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.all(10),
              width: 180,
              color: Colors.amber.shade100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset('assets/Images/distanceIcon.png')),
                  Text(
                    " 69 Km from you",
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 15,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
