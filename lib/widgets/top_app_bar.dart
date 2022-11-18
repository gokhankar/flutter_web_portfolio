import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:my_fresh_web/constants/controllers.dart';
import 'package:my_fresh_web/constants/style.dart';
import 'package:my_fresh_web/layout/AppResponsive.dart';
import 'package:my_fresh_web/route/routes.dart';
import 'package:my_fresh_web/widgets/menu_item_horizontal.dart';
import 'package:my_fresh_web/widgets/menu_item_side.dart';
import 'package:my_fresh_web/widgets/my_text_widget.dart';
import 'package:my_fresh_web/widgets/top_menu_item.dart';

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
                  child: Image.asset(
                    "assets/images/50px.png",
                    width: 40,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                // Expanded(child: Container()),
                Flexible(
                    child: IntrinsicHeight(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: menuItems
                        .map((item) => TopMenuItem(
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
                  ),
                )),
                // IntrinsicHeight(
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: const [
                //       MyTextWidget(
                //         text: "Home",
                //         fontWeight: FontWeight.w700,
                //       ),
                //       VerticalDivider(
                //         width: 25,
                //       ),
                //       MyTextWidget(
                //         text: "About",
                //         fontWeight: FontWeight.w700,
                //       ),
                //       VerticalDivider(
                //         width: 25,
                //       ),
                //       MyTextWidget(
                //         text: "Projects",
                //         fontWeight: FontWeight.w700,
                //       ),
                //       VerticalDivider(
                //         width: 25,
                //       ),
                //       MyTextWidget(
                //         text: "Blog",
                //         fontWeight: FontWeight.w700,
                //       ),
                //       VerticalDivider(
                //         width: 25,
                //       ),
                //       MyTextWidget(
                //         text: "Contact",
                //         fontWeight: FontWeight.w700,
                //       ),
                //     ],
                //   ),
                // )
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
