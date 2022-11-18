import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_fresh_web/constants/controllers.dart';
import 'package:my_fresh_web/constants/style.dart';
import 'package:my_fresh_web/layout/AppResponsive.dart';
import 'package:my_fresh_web/route/routes.dart';
import 'package:my_fresh_web/widgets/menu_item_horizontal.dart';
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
              children: [
                SizedBox(
                  height: 20,
                ),
                DrawerHeader(
                  child: Image.asset(
                    "assets/images/150px.png",
                    width: 150,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          Divider(
            color: cLightMid.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: menuItems
                .map((item) => MenuItemHorizontal(
                      itemName: item.name,
                      onTap: () {
                        if (!menuController.isActive(item.name)) {
                          menuController.changeActiveitemTo(item.name);
                          if (AppResponsive.isSmallScreen(context)) {
                            Get.back();
                          }
                          navigationController.navigateTo(item.route);
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
