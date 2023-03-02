import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/dark.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  height: 100,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "/63",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "ATLANTIC",
                            style: GoogleFonts.mukta(
                              textStyle: TextStyle(
                                  fontSize: 19,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Transform.translate(offset: Offset(150,270),
                  child: Transform.rotate(
                    angle: pi / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LIFE IS REALLY SIMPLE,BUT WE INSIST\nON MARKING IT COMPLICATED.",
                          style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ,fontSize: 25),
                        )
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                    offset: Offset(180,550),
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
