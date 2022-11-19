import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_fresh_web/constants/style.dart';
import 'package:my_fresh_web/layout/AppResponsive.dart';
import 'package:my_fresh_web/widgets/gradient_button.dart';
import 'package:my_fresh_web/widgets/rps_costum_painter.dart';
import 'package:simple_animations/simple_animations.dart';

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
                child: Container(
                  // width: AppResponsive.isSmallScreen(context)
                  //     ? width * .9
                  //     : width * .4,
                  height: height,
                  width: height * 2 / 3,
                  decoration: BoxDecoration(
                    border: Border.all(color: cLight, width: 1),
                    gradient: LinearGradient(
                      tileMode: TileMode.mirror,
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [
                        cMiddle,
                        cDark,
                      ],
                      stops: const [
                        0,
                        1,
                      ],
                    ),
                    backgroundBlendMode: BlendMode.srcOver,
                  ),
                  child: PlasmaRenderer(
                    type: PlasmaType.infinity,
                    particles: 10,
                    color: cDark,
                    blur: 0.31,
                    size: 1,
                    speed: 1.86,
                    offset: 0,
                    blendMode: BlendMode.plus,
                    particleType: ParticleType.atlas,
                    variation1: 0,
                    variation2: 0,
                    variation3: 0,
                    rotation: 0,
                  ),
                ),
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
