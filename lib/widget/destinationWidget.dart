import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DestinationWidget extends StatefulWidget {
  final String title;
  final String path;
  final String rating;
    final String location;
  const DestinationWidget(
      {super.key,
      required this.title,
      required this.path,
      required this.rating, required this.location});

  @override
  State<DestinationWidget> createState() => _DestinationWidgetState();
}

class _DestinationWidgetState extends State<DestinationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: [
              Container(
              
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  widget.path,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 15,
                  right: 15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                          padding:
                            const  EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          child: RatingWidget(widget: widget)),
                    ),
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        DestinationContentTile(widget: widget),
          const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class DestinationContentTile extends StatelessWidget {
  const DestinationContentTile({
    super.key,
    required this.widget,
  });

  final DestinationWidget widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            widget.title,
            style: GoogleFonts.titilliumWeb(
              fontSize: 20,
              color: Colors.grey.shade800,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
       const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/Images/directionsIcon.png'),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
              widget.location,
                style: GoogleFonts.titilliumWeb(
                  fontSize: 18,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.widget,
  });

  final DestinationWidget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          widget.rating,
          style: GoogleFonts.titilliumWeb(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.star,
          size: 25,
          color: Colors.orange,
        )
      ],
    );
  }
}
