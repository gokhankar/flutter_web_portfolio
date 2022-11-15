import 'package:flutter/material.dart';
import 'package:my_fresh_web/constants.dart/style.dart';
import 'package:my_fresh_web/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            // flex: 1,
            child: SideMenu()),
        Expanded(
            flex: 5,
            child: Container(
              color: cLightMid,
            )),
      ],
    );
  }
}
