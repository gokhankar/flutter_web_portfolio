import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_fresh_web/constants/style.dart';
import 'package:my_fresh_web/route/local_navigator.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      localNavigator(),
      Positioned(
        bottom: 0,
        child: Center(
          child: Container(
            color: cLightMid,
            alignment: Alignment.center,
            height: 30,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "made with Flutter and ❤ by Gökhan Karaçay",
              style: GoogleFonts.inter(fontSize: 10, color: cText),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      )
    ]);
  }
}
