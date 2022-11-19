import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/widgets/gradient_bg_animation.dart';
import 'package:flutter_portfolio/widgets/gradient_bg_animation_about.dart';
import 'package:flutter_portfolio/widgets/my_text_widget.dart';
import 'package:flutter_portfolio/widgets/rps_costum_painter_about.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            // height: 350,
            // width: 350,
            alignment: Alignment.center,
            child: Stack(children: [
              Container(
                height: 350,
                width: 350,
              ),
              Positioned(
                  left: 0,
                  top: 0,
                  child: GradientBgAnimationAbout(
                    height: 350,
                  )),
              Positioned(
                  left: 0,
                  top: 0,
                  height: 350,
                  width: 350,
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      width: 350,
                      height: 350,
                      child: Image.asset('assets/images/profile1.png',
                          height: 290))),
              Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    height: 350,
                    width: 350,
                    child: CustomPaint(
                      size: Size(350, 350.toDouble()),
                      painter: RPSCustomPainterAbout(),
                    ),
                  ))
            ]),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            child: Container(
              width: 350,
              color: cLight,
              child: Column(
                children: [MyTextWidget(text: "ABOUT ME")],
              ),
            ),
          )
        ]);
  }
}
