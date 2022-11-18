import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_fresh_web/constants/controllers.dart';
import 'package:my_fresh_web/constants/style.dart';
import 'package:my_fresh_web/widgets/my_text_widget.dart';

class TopMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const TopMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
            // height: 40,
            // width: 100,
            margin: EdgeInsets.symmetric(horizontal: 10),
            color: menuController.isHovering(itemName)
                ? cLightMid.withOpacity(.7)
                : Colors.transparent,
            child: Row(
              children: [
                // Visibility(
                //   visible: menuController.isHovering(itemName) ||
                //       menuController.isActive(itemName),
                //   child: Container(
                //     width: 6,
                //     height: 15,
                //     color: cDark,
                //   ),
                //   maintainSize: true,
                //   maintainState: true,
                //   maintainAnimation: true,
                // ),
                // SizedBox(
                //   width: _width / 80,
                // ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: menuController.returnIconFor(itemName),
                ),
                if (!menuController.isActive(itemName))
                  MyTextWidget(
                    text: itemName,
                    color: menuController.isHovering(itemName)
                        ? cDark
                        : cMiddleDark,
                  )
                else
                  MyTextWidget(
                    text: itemName,
                    color: cDark,
                    size: 14,
                    fontWeight: FontWeight.bold,
                  )
              ],
            ),
          )),
    );
  }
}
