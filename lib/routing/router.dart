import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flttergirls/routing/route_names.dart';
import 'package:flttergirls/views/community/community_view.dart';
import 'package:flttergirls/views/event/event_view.dart';
import 'package:flttergirls/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case EventRoute:
      return _getPageRoute(EventView());
    case CommunityRoute:
      return _getPageRoute(CommunityView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
