import 'package:flutter/material.dart';
import 'package:my_fresh_web/constants.dart/style.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: cLight,
    );
  }
}
