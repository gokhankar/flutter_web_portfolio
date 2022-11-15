import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget(
      {super.key,
      required this.text,
      this.size = 16,
      this.color = Colors.black87,
      this.fontWeight = FontWeight.normal});
  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
          fontSize: size, color: color, fontWeight: fontWeight),
    );
  }
}
