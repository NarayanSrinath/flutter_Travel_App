import 'dart:ui';

import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 15,
      left: 15,
      child: ClipRRect(
         borderRadius: BorderRadius.circular(50),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: InkWell(
              onTap: (){
               Navigator.pop(context);
              },
              child:const Icon(
                Icons.arrow_back,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
