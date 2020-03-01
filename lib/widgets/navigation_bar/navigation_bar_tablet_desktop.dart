import 'package:flttergirls/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flttergirls/widgets/navigation_bar/navbar_item.dart';
import 'package:flttergirls/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(HomeRoute),
          Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            NaveBarItem('Events' , EventRoute),
            SizedBox(
              width: 60
              ),
            NaveBarItem('Community', CommunityRoute),
          ]
          )
        ],
      ),
    );
  }
}