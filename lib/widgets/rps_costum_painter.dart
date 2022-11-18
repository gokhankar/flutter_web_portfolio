import 'package:flutter/material.dart';
import 'package:my_fresh_web/constants/style.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = cLight
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.6227000, 0);
    path0.quadraticBezierTo(size.width * -0.0480000, size.height * 0.5134000,
        size.width * 0.0498500, size.height * 0.7118667);
    path0.quadraticBezierTo(size.width * 0.2372250, size.height * 1.0095667,
        size.width, size.height * 0.9518333);
    path0.lineTo(size.width, size.height);
    path0.lineTo(-2, size.height);
    path0.lineTo(-2, -2);
    path0.lineTo(size.width * 0.6227250, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
