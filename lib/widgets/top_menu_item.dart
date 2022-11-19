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
            padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
            color: menuController.isHovering(itemName)
                ? cLightMid.withOpacity(.7)
                : Colors.transparent,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: menuController.returnIconFor(itemName),
                ),
                if (!menuController.isActive(itemName))
                  MyTextWidget(
                    text: itemName,
                    size: 12,
                    color: menuController.isHovering(itemName)
                        ? cDark
                        : cMiddleDark,
                    fontWeight: FontWeight.bold,
                  )
                else
                  MyTextWidget(
                    text: itemName,
                    color: cDark,
                    size: 12,
                    fontWeight: FontWeight.bold,
                  )
              ],
            ),
          )),
    );
  }
}
