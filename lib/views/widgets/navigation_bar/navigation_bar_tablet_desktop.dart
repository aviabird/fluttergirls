import 'package:flutter/material.dart';
import 'package:flttergirls/views/widgets/navigation_bar/navbar_item.dart';
import 'package:flttergirls/views/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            NaveBarItem('Events'),
            SizedBox(
              width: 60
              ),
            NaveBarItem('Community'),
          ]
          )
        ],
      ),
    );
  }
}