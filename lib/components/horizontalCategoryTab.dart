import 'package:flutter/material.dart';
import 'package:travelapp/model/categorydata.dart';

import 'package:travelapp/widget/categoryWidget.dart';

class HorizontalCategoryTab extends StatefulWidget {
  const HorizontalCategoryTab({super.key});

  @override
  State<HorizontalCategoryTab> createState() => _HorizontalCategoryTabState();
}

class _HorizontalCategoryTabState extends State<HorizontalCategoryTab> {
  List<CategoryDetails> categoryDetails = [
    CategoryDetails(
        path: 'assets/Images/forestIcon.png',
        title: 'Forest',
        color: Colors.green.shade200),
    CategoryDetails(
        path: 'assets/Images/beachIcon.png',
        title: 'Beach',
        color: Colors.red.shade200),
    CategoryDetails(
        path: 'assets/Images/boatingIcon.png',
        title: 'Boating',
        color: Colors.amber.shade200),
    CategoryDetails(
        path: 'assets/Images/hikingIcon.png',
        title: 'Hiking',
        color: Colors.blue.shade200),
    CategoryDetails(
        path: 'assets/Images/campingIcon.png',
        title: 'Camping',
        color: Colors.pink.shade200),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.maxFinite,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categoryDetails.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CategoryWidget(
                title: categoryDetails[index].title,
                color: categoryDetails[index].color,
                path: categoryDetails[index].path),
          );
        },
      ),
    );
  }
}


