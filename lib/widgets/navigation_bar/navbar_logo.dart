import 'package:fluttergirls/location.dart';
import 'package:fluttergirls/services/navigation_service.dart';
import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  final String navigationPath;
  const NavBarLogo(this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: SizedBox(
          height: 80,
          width: 150,
          child: Image.asset("assets/FlutterGirls-logo.png"),
        ));
  }
}
