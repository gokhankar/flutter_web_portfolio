import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_fresh_web/constants.dart/controllers.dart';
import 'package:my_fresh_web/constants.dart/style.dart';
import 'package:my_fresh_web/layout/AppResponsive.dart';
import 'package:my_fresh_web/route/routes.dart';
import 'package:my_fresh_web/widgets/menu_item_side.dart';
import 'package:my_fresh_web/widgets/my_text_widget.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: cLight,
      child: ListView(
        children: [
          if (AppResponsive.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: 200,
                      ),
                    ),
                    SizedBox(
                      width: _width / 48,
                    )
                  ],
                ),
              ],
            ),
          Divider(
            color: cLightMid.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: menuItems
                .map((itemName) => MenuItemSide(
                      itemName: itemName,
                      onTap: () {
                        if (!menuController.isActive(itemName)) {
                          menuController.changeActiveitemTo(itemName);
                          if (AppResponsive.isSmallScreen(context)) {
                            Get.back();
                          }
                          // TODO :: go to item name Route
                        }
                      },
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
