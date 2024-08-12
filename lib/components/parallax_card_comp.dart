import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/artikel_model.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

class AnimationCard extends StatefulWidget {
  const AnimationCard(this.artikel, this.width, {super.key});

  final Artikel artikel;
  final double? width;

  @override
  State<AnimationCard> createState() => _AnimationCardState();
}

class _AnimationCardState extends State<AnimationCard>
    with SingleTickerProviderStateMixin {
  late AnimationController scaleAnimationController;
  late Animation<double> scaleAnimation;
  double opacity = 0;
  bool isHover = false;

  @override
  void initState() {
    super.initState();
    scaleAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
      reverseDuration: const Duration(milliseconds: 1000),
    );
    scaleAnimation = Tween(begin: 1.2, end: 1.26).animate(
      CurvedAnimation(
        parent: scaleAnimationController,
        curve: const Cubic(0.16, 1, 0.3, 1),
        reverseCurve: Curves.easeInCirc,
      ),
    );
    scaleAnimationController.addListener(() {
      switch (scaleAnimationController.status) {
        case AnimationStatus.forward:
          if (opacity == 1) return;
          setState(() => opacity = 1);
          break;
        case AnimationStatus.reverse:
          if (opacity == 0) return;
          setState(() => opacity = 0);
          break;
        case AnimationStatus.dismissed:
        case AnimationStatus.completed:
      }
    });
  }

  @override
  void dispose() {
    scaleAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // print(widget.width);
    return Listener(
      onPointerDown: (_) {
        if (isHover) return;
        scaleAnimationController.forward();
      },
      onPointerUp: (_) {
        if (isHover) return;
        scaleAnimationController.reverse();
      },
      onPointerCancel: (_) {
        if (isHover) return;
        scaleAnimationController.reverse();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) {
          isHover = true;
          scaleAnimationController.forward();
        },
        onExit: (_) {
          isHover = true;
          scaleAnimationController.reverse();
        },
        // Tilt here
        child: Tilt(
          borderRadius: BorderRadius.circular(24),
          tiltConfig: const TiltConfig(
            angle: 6.0,
            enableReverse: true,
            enableOutsideAreaMove: false,
            leaveDuration: Duration(milliseconds: 600),
            filterQuality: FilterQuality.high,
          ),
          lightConfig: const LightConfig(disable: true),
          shadowConfig: const ShadowConfig(enableReverse: true),
          childLayout: ChildLayout(
            inner: [
              ScaleTransition(
                scale: scaleAnimation,
                alignment: Alignment.center,
                filterQuality: FilterQuality.high,
                child: TiltParallax(
                  child: Image.asset(
                    widget.artikel.image!,
                    filterQuality: FilterQuality.high,
                    width: 360.0,
                  ),
                ),
              ),
              Positioned.fill(
                child: AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(milliseconds: 600),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black12, Colors.black87],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            widget.artikel.type!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: widget.width! > 750
                                  ? 20
                                  : widget.width! > 600
                                      ? 13
                                      : widget.width! > 540
                                          ? 20
                                          : 13,
                            ),
                          ),
                          Text(
                            widget.artikel.title!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: widget.width! > 750
                                  ? 40
                                  : widget.width! > 600
                                      ? 15
                                      : widget.width! > 540
                                          ? 50
                                          : 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              widget.artikel.art!,
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: widget.width! > 750
                                    ? 14
                                    : widget.width! > 600
                                        ? 10
                                        : widget.width! > 540
                                            ? 14.0
                                            : 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          child: const SizedBox(),
        ),
      ),
    );
  }
}
