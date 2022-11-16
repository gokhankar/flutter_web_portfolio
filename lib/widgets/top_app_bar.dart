import 'package:flutter/material.dart';
import 'package:my_fresh_web/constants/style.dart';
import 'package:my_fresh_web/layout/AppResponsive.dart';
import 'package:my_fresh_web/widgets/my_text_widget.dart';

AppBar TopAppBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      elevation: 0,
      leading: null,
      automaticallyImplyLeading: false,
      title: !AppResponsive.isSmallScreen(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: Image.asset(
                    "assets/images/50px.png",
                    width: 40,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                Expanded(child: Container()),
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
      backgroundColor: cLight,
    );
