import 'package:flutter/material.dart';
import 'package:travelapp/model/destinationModel.dart';

import 'package:travelapp/widget/destinationWidget.dart';

import '../Screens/destails_page.dart';

class DestinationList extends StatefulWidget {
  const DestinationList({super.key});

  @override
  State<DestinationList> createState() => _DestinationListState();
}

class _DestinationListState extends State<DestinationList> {
  List<DestinationModel> destinationDetails = [
    DestinationModel(
      path: 'assets/Images/beachplace.jpg',
      rating: '4.0/5.0',
      title: 'Lake Barious',
      location: "Northen , Italy",
    ),
    DestinationModel(
      path: 'assets/Images/forestplace.jfif',
      rating: '3.0/5.0',
      title: 'Palm Forest',
      location: "Northen , Barzil",
    ),
    DestinationModel(
      path: 'assets/Images/hiking.jpg',
      rating: '5.0/5.0',
      title: 'Blue Mountain',
      location: "Northen , IreLand",
    ),
    DestinationModel(
      path: 'assets/Images/campingplace.jpg',
      rating: '4.0/5.0',
      title: 'Camp Barious',
      location: "Southern , IceLand",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // return const

    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 20.0,
      crossAxisSpacing: 20.0,
      childAspectRatio: 0.75,
      children: List.generate(destinationDetails.length, (index) {
        return InkWell(
          onTap: (){
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  DetailsPage(data: destinationDetails[index],)),
  );
          },
          child: DestinationWidget(
            path: destinationDetails[index].path,
            rating: destinationDetails[index].rating,
            title: destinationDetails[index].title,
            location: destinationDetails[index].location,
          ),
        ); // Replace with your widget for each grid item
      }),
    );
  }
}
