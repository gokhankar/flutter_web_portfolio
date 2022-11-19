import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:simple_animations/simple_animations.dart';

class GradientBgAnimationAbout extends StatelessWidget {
  const GradientBgAnimationAbout({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
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
    );
  }
}
