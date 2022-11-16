import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_fresh_web/constants/style.dart';
import 'package:my_fresh_web/controllers/menu_controller.dart';
import 'package:my_fresh_web/controllers/navigation_controller.dart';
import 'package:my_fresh_web/layout/layout.dart';
import 'package:my_fresh_web/pages/error_page.dart';
import 'package:my_fresh_web/pages/home.dart';
import 'package:my_fresh_web/route/routes.dart';

void main() {
  Get.put(MenuController());
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
          transition: Transition.fadeIn),
      title: 'Gokhan Karacay Portfolio',
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
