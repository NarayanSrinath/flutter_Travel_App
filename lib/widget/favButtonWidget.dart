import 'dart:ui';

import 'package:flutter/material.dart';

class FavButtonWidget extends StatefulWidget {
  const FavButtonWidget({
    super.key,
  });

  @override
  State<FavButtonWidget> createState() => _FavButtonWidgetState();
}

class _FavButtonWidgetState extends State<FavButtonWidget> {
  bool isFavorite= false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 15,
      right: 15,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: InkWell(
              onTap: (){
                setState(() {
                   isFavorite = !isFavorite;
                });
              },
              child:  Icon(
                Icons.favorite,
                size: 30,
                color:isFavorite? Colors.red:Colors.black ,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
