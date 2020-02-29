import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset("assets/FlutterGirls-logo.png"),
          ),
          Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _NaveBarItem('Events'),
            SizedBox(
              width: 60
              ),
            _NaveBarItem('Community'),
          ]
          )
        ],
      ),
    );
  }
}

class _NaveBarItem extends StatelessWidget {
  final String title;
  const _NaveBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
