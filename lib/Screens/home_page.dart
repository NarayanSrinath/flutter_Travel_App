import 'package:flutter/material.dart';
import 'package:travelapp/components/destinationPlaceList.dart';

import 'package:travelapp/widget/searchBar.dart';
import 'package:travelapp/widget/topDestinationTile.dart';
import 'package:travelapp/widget/top_nav.dart';

import '../components/horizontalCategoryTab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10 ,bottom: 10,top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TopNavigation(),
                SizedBox(
                  height: 10,
                ),
                SearchBarWidget(),
                SizedBox(
                  height: 15,
                ),
                HorizontalCategoryTab(),
                TopDestinationTile(),
                SizedBox(
                  height: 10,
                ),
                DestinationList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
