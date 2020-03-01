import 'package:flttergirls/routing/route_names.dart';
import 'package:flttergirls/widgets/navigation_drawer/drawer_item.dart';
import 'package:flttergirls/widgets/navigation_drawer/navigation_drawer_header.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var videocam;
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.white12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Events', Icons.videocam, EventRoute),
          DrawerItem('Community', Icons.help, CommunityRoute),
        ],
      ),
    );
  }
}