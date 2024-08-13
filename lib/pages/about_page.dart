import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/controllers/form_controller.dart';
import 'package:flutter_portfolio/layout/AppResponsive.dart';
import 'package:flutter_portfolio/widgets/gradient_bg_animation.dart';
import 'package:flutter_portfolio/widgets/gradient_bg_animation_about.dart';
import 'package:flutter_portfolio/widgets/gradient_button.dart';
import 'package:flutter_portfolio/widgets/my_text_widget.dart';
import 'package:flutter_portfolio/widgets/rps_costum_painter_about.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final FormController fContx = Get.put(FormController());
    var width = MediaQuery.of(context).size.width;
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          width >= 550
              ? Container(
                  // height: 350,
                  // width: 350,
                  padding: EdgeInsets.all(
                      AppResponsive.isSmallScreen(context) ? 30 : 50),
                  alignment: Alignment.center,
                  child: Stack(children: [
                    Container(
                      height: width >= 700 ? 350 : 250,
                      width: width >= 700 ? 350 : 250,
                    ),
                    Positioned(
                        left: 0,
                        top: 0,
                        child: GradientBgAnimationAbout(
                          height: width >= 700 ? 350 : 250,
                        )),
                    Positioned(
                        left: 0,
                        top: 0,
                        height: width >= 700 ? 350 : 250,
                        width: width >= 700 ? 350 : 250,
                        child: Container(
                            alignment: Alignment.bottomCenter,
                            width: width >= 700 ? 350 : 250,
                            height: width >= 700 ? 350 : 250,
                            child: Image.asset('assets/images/profile1.png',
                                height: width >= 700 ? 290 : 200))),
                    Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          height: width >= 700 ? 350 : 250,
                          width: width >= 700 ? 350 : 250,
                          child: CustomPaint(
                            size: Size(width >= 700 ? 350 : 250,
                                width >= 700 ? 350 : 250.toDouble()),
                            painter: RPSCustomPainterAbout(),
                          ),
                        ))
                  ]),
                )
              : Container(),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(
                  AppResponsive.isSmallScreen(context) ? 30 : 50),
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                // width: 350,
                color: cLight,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyTextWidget(
                        text: "ABOUT ME",
                        size: 14,
                        color: cTextLight,
                      ),
                      SizedBox(height: 20),
                      MyTextWidget(
                        text: "FLUTTER MOBILE APPLICATION DEVELOPER",
                        size: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 20),
                      MyTextWidget(
                        text:
                            "A passionate developer interested in building the best applications in the mobile environment.\n\nFor over 4 years, I’ve been developing web applications, and for 2 years I have been in the mobile application market. \n\nWhen I’m not on the job, I love mercilessly killing my time with my family(with my two little sons), walking in nature, and indulging my love for seeing new places.",
                        size: 14,
                        color: cTextLight,
                        fontWeight: FontWeight.w300,
                      ),
                      SizedBox(height: 20),
                      Obx(
                        () => fContx.colorIndex.value != 3
                            ? GradientButton(
                                colorList: fContx.colorIndex.value == 1
                                    ? [cMiddleDark, cDark]
                                    : [cDark, cMiddleDark],
                                title: "CHECK OUT CV",
                                toCV: true,
                              )
                            : SizedBox(),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]);
  }
}
