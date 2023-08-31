import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/Screens/destails_page.dart';

class RatingAndReviewWidget extends StatelessWidget {
  const RatingAndReviewWidget({
    super.key,
    required this.widget,
    required this.RandomImages,
  });

  final DetailsPage widget;
  final List RandomImages;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
            fit: FlexFit.loose,
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                child: Column(
                  children: [
                    Text(
                      "${widget.data.rating} Reviews",
                      style: GoogleFonts.titilliumWeb(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    RatingBarIndicator(
                        rating: 4,
                        itemCount: 5,
                        itemSize: 30.0,
                        itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber.shade100,
                            ))
                  ],
                ),
              ),
            )),
        Flexible(
            fit: FlexFit.loose,
            flex: 5,
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < RandomImages.length; i++)
                    Align(
                      widthFactor: 0.5,
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 30,
                          backgroundImage: AssetImage(RandomImages[i]),
                        ),
                      ),
                    )
                ],
              ),
            )),
      ],
    );
  }
}

