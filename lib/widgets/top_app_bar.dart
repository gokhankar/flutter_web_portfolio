import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_portfolio/constants/controllers.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/layout/AppResponsive.dart';
import 'package:flutter_portfolio/route/routes.dart';
import 'package:flutter_portfolio/widgets/top_menu_item.dart';

AppBar TopAppBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      elevation: 0,
      leading: null,
      automaticallyImplyLeading: false,
      title: !AppResponsive.isSmallScreen(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      navigationController.navigateTo('/home');
                    },
                    child: Image.asset(
                      "assets/images/50px.png",
                      width: 40,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                // Expanded(child: Container()),
                Flexible(
                    child: IntrinsicHeight(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: menuItems
                        .map((item) => Row(
                              children: [
                                TopMenuItem(
                                  itemName: item.name,
                                  onTap: () {
                                    if (!menuController.isActive(item.name)) {
                                      menuController
                                          .changeActiveitemTo(item.name);
                                      if (AppResponsive.isSmallScreen(
                                          context)) {
                                        Get.back();
                                      }
                                      navigationController
                                          .navigateTo(item.route);
                                    }
                                  },
                                ),
                                if (item.name != 'Contact')
                                  const VerticalDivider(
                                    width: 1,
                                    indent: 5,
                                    endIndent: 5,
                                  ),
                              ],
                            ))
                        .toList(),
                  ),
                )),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      key.currentState?.openDrawer();
                    },
                    icon: Icon(
                      Icons.menu,
                      color: cText,
                    )),
              ],
            ),
      backgroundColor: Colors.transparent,
    );
