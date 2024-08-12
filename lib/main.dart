import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_portfolio/constants/style.dart';
import 'package:flutter_portfolio/controllers/menu_controller.dart';
import 'package:flutter_portfolio/controllers/navigation_controller.dart';
import 'package:flutter_portfolio/layout/layout.dart';
import 'package:flutter_portfolio/pages/error_page.dart';
import 'package:flutter_portfolio/pages/home.dart';
import 'package:flutter_portfolio/route/routes.dart';

void main() {
  Get.put(MenuControllerx());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: RootRoute, page: () => AppLayout()),
        GetPage(name: ErrorPageRoute, page: () => AppLayout()),
      ],
      initialRoute: RootRoute,
      unknownRoute: GetPage(
          name: "/error",
          page: () => ErrorPage(),
          transition: Transition.leftToRight),
      title: 'Gökhan Karaçay Portfolio',
      theme: ThemeData(
          scaffoldBackgroundColor: cLight,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black54),
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }),
          primaryColor: cLight),
      // home: AppLayout(),
    );
  }
}
