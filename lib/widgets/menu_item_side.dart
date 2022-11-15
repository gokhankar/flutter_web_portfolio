import 'package:flutter/material.dart';
import 'package:my_fresh_web/layout/AppResponsive.dart';
import 'package:my_fresh_web/widgets/menu_item_horizontal.dart';
import 'package:my_fresh_web/widgets/menu_item_vertical.dart';

class MenuItemSide extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;
  const MenuItemSide({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (AppResponsive.isCustomScreen(context))
      return MenuItemVertical(
        itemName: itemName,
        onTap: onTap,
      );

    return MenuItemHorizontal(
      itemName: itemName,
      onTap: onTap,
    );
  }
}
