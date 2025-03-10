import 'package:flutter/material.dart';
import 'package:portfolio/mobile/about_mobile.dart';
import 'package:portfolio/mobile/blog_mobile.dart';
import 'package:portfolio/mobile/contact_mobile.dart';
import 'package:portfolio/mobile/landing_page_mobile.dart';
import 'package:portfolio/mobile/works_mobile.dart';
import 'package:portfolio/web/about_web.dart';
import 'package:portfolio/web/blog_web.dart';
import 'package:portfolio/web/contact_web.dart';
import 'package:portfolio/web/landing_page_web.dart';
import 'package:portfolio/web/works_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder:
              (_) => LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return LandingPageWeb();
                  } else {
                    return LandingPageMobile();
                  }
                },
              ),
        );
      case '/contact':
        return MaterialPageRoute(
          settings: settings,
          builder:
              (_) => LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return ContactWeb();
                  } else {
                    return ContactMobile();
                  }
                },
              ),
        );
      case '/about':
        return MaterialPageRoute(
          settings: settings,
          builder:
              (_) => LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return AboutWeb();
                  } else {
                    return AboutMobile();
                  }
                },
              ),
        );
      case '/blog':
        return MaterialPageRoute(
          settings: settings,
          builder:
              (_) => LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return BlogWeb();
                  } else {
                    return BlogMobile();
                  }
                },
              ),
        );
      case '/works':
        return MaterialPageRoute(
          settings: settings,
          builder:
              (_) => LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return WorksWeb();
                  } else {
                    return WorksMobile();
                  }
                },
              ),
        );

      default:
        return MaterialPageRoute(
          settings: settings,
          builder:
              (_) => LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 800) {
                    return LandingPageWeb();
                  } else {
                    return LandingPageMobile();
                  }
                },
              ),
        );
    }
  }
}
