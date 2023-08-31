import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Point of Interest",
              style: GoogleFonts.titilliumWeb(
                fontSize: 30,
                color: Colors.grey.shade700,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit:FlexFit.loose,
              flex: 9,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: "Seach Places",
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
          const   SizedBox(width: 10,),
            Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100    ,
                    borderRadius: BorderRadius.circular(10)
                                  ),
                    height: 60,
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("assets/Images/searchIcon.png"),
                    )),
              ),
            ),
          ],
        )
      ],
    );
  }
}
