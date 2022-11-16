import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_fresh_web/constants/style.dart';
import 'package:my_fresh_web/route/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
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
      return Icon(
        icon,
        size: 22,
        color: cDark,
      );

    return Icon(
      icon,
      color: isHovering(itemName) ? cDark : cLightMid,
    );
  }
}
