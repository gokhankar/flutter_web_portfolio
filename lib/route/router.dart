import 'package:flutter/material.dart';

import 'package:flutter_portfolio/pages/aboutPage.dart';
import 'package:flutter_portfolio/pages/blogPage.dart';
import 'package:flutter_portfolio/pages/contactPage.dart';
import 'package:flutter_portfolio/pages/error_page.dart';
import 'package:flutter_portfolio/pages/home.dart';
import 'package:flutter_portfolio/pages/projectsPage.dart';
import 'package:flutter_portfolio/route/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageRoute:
      return _getPageRoute(Home());
    case AboutPageRoute:
      return _getPageRoute(AboutPage());
    case ProjectsPageRoute:
      return _getPageRoute(ProjectsPage());
    case BlogPageRoute:
      return _getPageRoute(BlogPage());
    case ContactPageRoute:
      return _getPageRoute(ContactPage());
    default:
      return _getPageRoute(ErrorPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
