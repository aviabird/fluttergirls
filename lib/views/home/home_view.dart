import 'package:flutter/material.dart';
import 'package:flttergirls/views/widgets/navigation_bar/navigation_bar.dart';
import 'package:flttergirls/views/widgets/centered_view/centered_view.dart';
import 'package:flttergirls/views/widgets/event_details/event_details.dart';
import 'package:flttergirls/views/widgets/call_to_action/call_to_action.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  CenteredView(
        child: Column(children: <Widget>[
          NavigationBar(),
          Expanded(child: Row(children: <Widget>[
            EventDetails(),
            Expanded(child: Center(child:CallToAction('Register for Event'),),),
          ],),),
          ],
          ),
          ),
    );
  }
}