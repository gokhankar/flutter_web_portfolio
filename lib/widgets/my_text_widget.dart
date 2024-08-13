import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget(
      {super.key,
      required this.text,
      this.size = 16,
      this.textAlign = TextAlign.justify,
      this.maxLines = 1,
      this.color = Colors.black87,
      this.fontWeight = FontWeight.normal});
  final String text;
  final int maxLines;
  final TextAlign textAlign;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // textAlign: TextAlign.justify,
      style: GoogleFonts.roboto(
          fontSize: size, color: color, fontWeight: fontWeight),
      maxLines: maxLines,
    );
  }
}
