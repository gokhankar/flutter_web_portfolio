import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constants/controllers.dart';
import 'package:flutter_portfolio/route/router.dart';
import 'package:flutter_portfolio/route/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      initialRoute: HomePageRoute,
      onGenerateRoute: generateRoute,
    );
