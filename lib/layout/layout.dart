import 'package:flutter/material.dart';
import 'package:flutter_portfolio/layout/AppResponsive.dart';
import 'package:flutter_portfolio/layout/large_screen.dart';
import 'package:flutter_portfolio/layout/small_screen.dart';
import 'package:flutter_portfolio/widgets/side_menu.dart';
import 'package:flutter_portfolio/widgets/top_app_bar.dart';

class AppLayout extends StatelessWidget {
  AppLayout({super.key});
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopAppBar(context, scaffoldKey),
        extendBodyBehindAppBar: true,
        drawer: Drawer(
          child: SideMenu(),
        ),
        key: scaffoldKey,
        body: const AppResponsive(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ));
  }
}
