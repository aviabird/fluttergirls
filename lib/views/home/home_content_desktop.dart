import 'package:flttergirls/widgets/call_to_action/call_to_action.dart';
import 'package:flttergirls/widgets/event_details/event_details.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        EventDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Register'),
          ),
        ),
      ],
    );
  }
}
