import 'package:flttergirls/location.dart';
import 'package:flttergirls/services/navigation_service.dart';
import 'package:flutter/material.dart';

class NaveBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NaveBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
