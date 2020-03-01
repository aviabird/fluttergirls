import 'package:flttergirls/widgets/call_to_action/call_to_action.dart';
import 'package:flttergirls/widgets/event_details/event_details.dart';
import 'package:flutter/material.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        EventDetails(),
        SizedBox(height:100, ),
        CallToAction('Register')
      ],
    );
  }
}