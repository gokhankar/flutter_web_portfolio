import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_fresh_web/constants/style.dart';
import 'package:my_fresh_web/route/local_navigator.dart';
import 'package:my_fresh_web/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        children: [
          Expanded(
              // flex: 1,
              child: SideMenu()),
          Expanded(flex: 5, child: localNavigator()),
        ],
      ),
      Positioned(
        bottom: 0,
        child: Center(
          child: Container(
            color: cLightMid,
            alignment: Alignment.center,
            height: 40,
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
