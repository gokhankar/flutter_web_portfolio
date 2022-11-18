import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_fresh_web/constants/style.dart';
import 'package:my_fresh_web/layout/AppResponsive.dart';
import 'package:my_fresh_web/widgets/my_text_widget.dart';
import 'package:my_fresh_web/widgets/rps_costum_painter.dart';
import 'package:simple_animations/simple_animations.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Expanded(
        //   child: Container(
        //     color: Colors.green,
        //     child: Text('Merhaba', style: TextStyle(fontSize: 30)),
        //   ),
        // ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: cLight, width: 1),
              color: cLight,
            ),
            width:
                AppResponsive.isSmallScreen(context) ? width * .9 : width * .4,
            // height: AppResponsive.isSmallScreen(context)
            //     ? width * .9 * 1.5 - 100
            //     : width * .4 * 1.5 - 100,
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.bottomRight,
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
                    width: AppResponsive.isSmallScreen(context)
                        ? width * .9
                        : width * .4,
                    height: AppResponsive.isSmallScreen(context)
                        ? width * .9 * 1.5 - 100
                        : width * .4 * 1.5 - 100,
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
                        stops: [
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
                        // color: Colors.green,
                        width: AppResponsive.isSmallScreen(context)
                            ? 295
                            : width * .3,
                        // color: Colors.green,
                        child: Image.asset(
                          'assets/images/profile1.png',
                          width:
                              AppResponsive.isSmallScreen(context) ? 295 : 295,
                        ))),
                Positioned(
                  right: 0,
                  child: Container(
                    // color: cLight,
                    width: AppResponsive.isSmallScreen(context)
                        ? width * .9
                        : width * .4,
                    height: AppResponsive.isSmallScreen(context)
                        ? width * .9 * 1.5 - 100
                        : width * .4 * 1.5 - 100,
                    alignment: Alignment.centerRight,
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: cDark, width: 5)),
                    child: CustomPaint(
                      size: Size(
                          AppResponsive.isSmallScreen(context)
                              ? width * .9
                              : width * .4,
                          AppResponsive.isSmallScreen(context)
                              ? width * .9 * 1.5
                              : width *
                                  .4 *
                                  1.5
                                      // (height - 60) / 1.5,
                                      // (height - 60)
                                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter(),
                    ),
                  ),
                ),
                Positioned(
                  top: height * .2,
                  left: width * .1,
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
                        height: 10,
                      ),
                      Text(
                        "I am Gökhan Karaçay",
                        style: GoogleFonts.roboto(
                            fontSize: 35,
                            color: cText,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flutter Mobile Application Developer",
                        style:
                            GoogleFonts.roboto(fontSize: 24, color: cTextLight),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
