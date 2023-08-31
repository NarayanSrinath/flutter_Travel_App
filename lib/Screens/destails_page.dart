import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:travelapp/model/destinationModel.dart';
import 'package:travelapp/widget/locationDetailsTileWidget.dart';
import 'package:travelapp/widget/placehighlights.dart';
import 'package:travelapp/widget/ratingAndReviewWidget.dart';

import '../widget/backButtonWidget.dart';
import '../widget/descriptionTileWidget.dart';
import '../widget/favButtonWidget.dart';

class DetailsPage extends StatefulWidget {
  final DestinationModel data;
  const DetailsPage({super.key, required this.data});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List randomImages = [
  'assets/Images/beachplace.jpg',
  'assets/Images/forestplace.jfif',
  'assets/Images/hiking.jpg',
  'assets/Images/campingplace.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(widget.data.path),
                    ),
                    const FavButtonWidget(),
                    const BackButtonWidget(),
                    const PlaceHighlightsWidget()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  widget.data.title,
                  style: GoogleFonts.ubuntu(
                    fontSize: 25,
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              LocationDetailsTile(widget: widget),
              const SizedBox(
                height: 20,
              ),
              RatingAndReviewWidget(widget: widget, RandomImages: randomImages),
              const SizedBox(
                height: 20,
              ),
              const DescriptionTile(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



