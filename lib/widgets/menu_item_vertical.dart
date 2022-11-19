// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:flutter_portfolio/constants/controllers.dart';
// import 'package:flutter_portfolio/constants/style.dart';
// import 'package:flutter_portfolio/widgets/my_text_widget.dart';

// class MenuItemVertical extends StatelessWidget {
//   final String itemName;
//   final VoidCallback onTap;
//   const MenuItemVertical(
//       {Key? key, required this.itemName, required this.onTap})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       onHover: (value) {
//         value
//             ? menuController.onHover(itemName)
//             : menuController.onHover("not hovering");
//       },
//       child: Obx(() => Container(
//             color: menuController.isHovering(itemName)
//                 ? cLightMid.withOpacity(.1)
//                 : Colors.transparent,
//             child: Row(
//               children: [
//                 Visibility(
//                   visible: menuController.isHovering(itemName) ||
//                       menuController.isActive(itemName),
//                   child: Container(
//                     width: 3,
//                     height: 72,
//                     color: cDark,
//                   ),
//                   maintainSize: true,
//                   maintainState: true,
//                   maintainAnimation: true,
//                 ),
//                 Expanded(
//                     child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(16),
//                       child: menuController.returnIconFor(itemName),
//                     ),
//                     if (!menuController.isActive(itemName))
//                       Flexible(
//                           child: MyTextWidget(
//                         text: itemName,
//                         color: menuController.isHovering(itemName)
//                             ? cDark
//                             : cMiddleDark,
//                       ))
//                     else
//                       Flexible(
//                           child: MyTextWidget(
//                         text: itemName,
//                         color: cDark,
//                         size: 18,
//                         fontWeight: FontWeight.bold,
//                       ))
//                   ],
//                 ))
//               ],
//             ),
//           )),
//     );
//   }
// }
