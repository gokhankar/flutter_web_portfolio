import 'package:flutter/material.dart';

import 'package:my_fresh_web/pages/aboutPage.dart';
import 'package:my_fresh_web/pages/blogPage.dart';
import 'package:my_fresh_web/pages/contactPage.dart';
import 'package:my_fresh_web/pages/error_page.dart';
import 'package:my_fresh_web/pages/home.dart';
import 'package:my_fresh_web/pages/projectsPage.dart';
import 'package:my_fresh_web/route/routes.dart';

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
