import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/layout/AppResponsive.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final int? height;
  final int? smallScreenheight;
  GradientButton({
    Key? key,
    required this.title,
    this.height = 50,
    this.smallScreenheight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppResponsive.isSmallScreen(context)
          ? smallScreenheight?.toDouble() ?? 30
          : height?.toDouble() ?? 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(padding: EdgeInsets.all(0.0)),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        // padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [cMiddleDark, cDark],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(5.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 200.0, minHeight: 40.0),
            alignment: Alignment.center,
            child: Text(
              title,
              style: GoogleFonts.roboto(
                  fontSize: AppResponsive.isSmallScreen(context) ? 14 : 18,
                  color: cLight,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
