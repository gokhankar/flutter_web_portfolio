import 'package:flutter/material.dart';
import 'package:my_fresh_web/constants/controllers.dart';
import 'package:my_fresh_web/route/router.dart';
import 'package:my_fresh_web/route/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: HomePageRoute,
      onGenerateRoute: generateRoute,
    );
