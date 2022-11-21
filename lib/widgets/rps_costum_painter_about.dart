import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/style.dart';

// class RPSCustomPainterAbout extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint0 = Paint()
//       ..color = cLight
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 1;

//     Path path0 = Path();
//     path0.moveTo(0, 0);
//     path0.lineTo(0, size.height);
//     path0.lineTo(size.width, size.height);
//     path0.lineTo(size.width, 0);
//     path0.lineTo(0, 0);
//     path0.quadraticBezierTo(size.width * 0.1093143, size.height * 0.2556857,
//         size.width * 0.1714286, size.height * 0.1942857);
//     path0.cubicTo(
//         size.width * 0.2658571,
//         size.height * 0.1213143,
//         size.width * 0.3533714,
//         size.height * 0.0598000,
//         size.width * 0.4942857,
//         size.height * 0.0542857);
//     path0.cubicTo(
//         size.width * 0.6714286,
//         size.height * 0.0675429,
//         size.width * 0.8719714,
//         size.height * 0.3148000,
//         size.width * 0.9628571,
//         size.height * 0.7114286);
//     path0.cubicTo(
//         size.width * 0.8320286,
//         size.height * 0.8292571,
//         size.width * 0.6356000,
//         size.height * 0.9458286,
//         size.width * 0.4971429,
//         size.height * 0.9514286);
//     path0.cubicTo(
//         size.width * 0.3532000,
//         size.height * 0.9580000,
//         size.width * 0.0605143,
//         size.height * 0.6990286,
//         size.width * 0.0514286,
//         size.height * 0.4885714);
//     path0.cubicTo(
//         size.width * 0.0482857,
//         size.height * 0.4226000,
//         size.width * 0.1089714,
//         size.height * 0.2563143,
//         size.width * 0.1828571,
//         size.height * 0.1857143);
//     path0.quadraticBezierTo(
//         size.width * 0.2656857, size.height * 0.1204571, 0, 0);
//     path0.close();

//     canvas.drawPath(path0, paint0);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

class RPSCustomPainterAbout extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = cLight
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(-2, -2);
    path0.lineTo(-2, size.height);
    path0.lineTo(size.width + 2, size.height + 2);
    path0.lineTo(size.width + 2, -2);
    path0.lineTo(-2, -2);
    path0.lineTo(size.width * 0.1171429, size.height * 0.2342857);
    path0.quadraticBezierTo(size.width * 0.2581143, size.height * 0.0312286,
        size.width * 0.4942857, size.height * 0.0142857);
    path0.cubicTo(
        size.width * 0.7509143,
        size.height * 0.0145143,
        size.width * 0.9763429,
        size.height * 0.4166857,
        size.width * 0.9765143,
        size.height * 0.7033714);
    path0.cubicTo(
        size.width * 0.9676000,
        size.height * 0.8783714,
        size.width * 0.6375714,
        size.height * 0.9558571,
        size.width * 0.5085714,
        size.height * 0.9485714);
    path0.cubicTo(
        size.width * 0.2556000,
        size.height * 0.9298571,
        size.width * 0.0146286,
        size.height * 0.6754571,
        size.width * 0.0228571,
        size.height * 0.4228571);
    path0.quadraticBezierTo(size.width * 0.0414286, size.height * 0.3302857,
        size.width * 0.1600000, size.height * 0.1800000);
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
