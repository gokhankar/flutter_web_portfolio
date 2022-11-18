import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_fresh_web/constants/style.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0.0)),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        // padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [cDark, cMiddleDark],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(5.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "SEE MY WORKS",
              style: GoogleFonts.roboto(
                  fontSize: 18, color: cLight, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
