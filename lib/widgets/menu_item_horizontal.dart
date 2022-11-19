import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_portfolio/constants/controllers.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/widgets/my_text_widget.dart';

class MenuItemHorizontal extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const MenuItemHorizontal(
      {Key? key, required this.itemName, required this.onTap})
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
            color: menuController.isHovering(itemName)
                ? cLightMid.withOpacity(.7)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  child: Container(
                    width: 6,
                    height: 40,
                    color: cDark,
                  ),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                ),
                SizedBox(
                  width: _width / 80,
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: menuController.returnIconFor(itemName),
                ),
                if (!menuController.isActive(itemName))
                  Flexible(
                      child: MyTextWidget(
                    text: itemName,
                    color: menuController.isHovering(itemName)
                        ? cDark
                        : cMiddleDark,
                  ))
                else
                  Flexible(
                      child: MyTextWidget(
                    text: itemName,
                    color: cDark,
                    size: 18,
                    fontWeight: FontWeight.bold,
                  ))
              ],
            ),
          )),
    );
  }
}
