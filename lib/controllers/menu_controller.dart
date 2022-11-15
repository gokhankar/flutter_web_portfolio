import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_fresh_web/constants.dart/style.dart';
import 'package:my_fresh_web/route/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = HomePageRoute.obs;
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
      case HomePageRoute:
        return customIcon(Icons.home_rounded, itemName);
      case AboutPageRoute:
        return customIcon(Icons.person_rounded, itemName);
      case ProjectsPageRoute:
        return customIcon(Icons.workspace_premium_rounded, itemName);
      case BlogPageRoute:
        return customIcon(Icons.brush_rounded, itemName);
      case ContactsPageRoute:
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
