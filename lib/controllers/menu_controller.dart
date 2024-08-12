import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/route/routes.dart';

class MenuControllerx extends GetxController {
  static MenuControllerx instance = Get.find();
  var activeItem = HomePageDisplayName.obs;
  var hoverItem = "".obs;

  changeActiveitemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case HomePageDisplayName:
        return customIcon(Icons.home_rounded, itemName);
      case AboutPageDisplayName:
        return customIcon(Icons.person_rounded, itemName);
      case ProjectsPageDisplayName:
        return customIcon(Icons.workspace_premium_rounded, itemName);
      case BlogPageDisplayName:
        return customIcon(Icons.brush_rounded, itemName);
      case ContactPageDisplayName:
        return customIcon(Icons.phone_rounded, itemName);
      default:
        return customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Container(
        margin: const EdgeInsets.only(right: 5),
        child: Icon(
          icon,
          size: 15,
          color: cDark,
        ),
      );

    return Container(
      margin: EdgeInsets.only(right: 5),
      child: Icon(
        icon,
        color: isHovering(itemName) ? cDark : cLightMid,
        size: 15,
      ),
    );
  }
}
