import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/gradient_bg_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/layout/AppResponsive.dart';
import 'package:flutter_portfolio/widgets/gradient_button.dart';
import 'package:flutter_portfolio/widgets/rps_costum_painter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.topRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: cLight, width: 1),
                  color: cLight,
                ),
              ),
              Positioned(
                right: 0,
                child: GradientBgAnimation(height: height),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                      alignment: Alignment.bottomRight,
                      width: AppResponsive.isSmallScreen(context)
                          ? 295
                          : width * .3,
                      child: Image.asset('assets/images/profile1.png',
                          width: AppResponsive.isSmallScreen(context)
                              ? width <= height
                                  ? 295
                                  : 200
                              : 295))),
              Positioned(
                right: 0,
                child: Container(
                  // width: AppResponsive.isSmallScreen(context)
                  //     ? width * .9
                  //     : width * .4,
                  height: height,
                  width: height * 2 / 3,
                  alignment: Alignment.centerRight,
                  child: CustomPaint(
                    size: Size(height * 2 / 3, height.toDouble()),
                    painter: RPSCustomPainter(),
                  ),
                ),
              ),
              Positioned(
                top: AppResponsive.isSmallScreen(context)
                    ? height * .2
                    : height * .25,
                left: AppResponsive.isLargeScreen(context)
                    ? width * .3
                    : width * .05,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi There! ",
                      style:
                          GoogleFonts.roboto(fontSize: 30, color: cTextLight),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: AppResponsive.isSmallScreen(context) ? 6 : 10,
                    ),
                    Text(
                      "I am Gökhan Karaçay",
                      style: GoogleFonts.roboto(
                          fontSize:
                              AppResponsive.isSmallScreen(context) ? 25 : 35,
                          color: cText,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: AppResponsive.isSmallScreen(context) ? 6 : 10,
                    ),
                    Text(
                      "Flutter Mobile Application Developer",
                      style: GoogleFonts.roboto(
                          fontSize:
                              AppResponsive.isSmallScreen(context) ? 16 : 24,
                          color: cTextLight),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: AppResponsive.isSmallScreen(context) ? 10 : 20,
                    ),
                    Row(
                      children: [
                        // IconButton(onPressed: (){}, icon: Icon(Icons.goog))
                        IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.github)),
                        IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.twitter)),
                        IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.instagram)),
                        IconButton(
                            onPressed: () {},
                            icon: const FaIcon(FontAwesomeIcons.linkedin)),
                      ],
                    ),
                    SizedBox(
                      height: AppResponsive.isSmallScreen(context) ? 15 : 30,
                    ),
                    const GradientButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
