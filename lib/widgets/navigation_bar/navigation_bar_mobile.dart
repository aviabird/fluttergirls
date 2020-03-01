import 'package:flttergirls/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flttergirls/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu),
           onPressed: (){},
           ),
           NavBarLogo(HomeRoute)
        ],
      ),
    );
  }
}