import 'package:fluttergirls/widgets/call_to_action/call_to_action.dart';
import 'package:fluttergirls/widgets/event_details/event_details.dart';
import 'package:flutter/material.dart';
import 'package:fluttergirls/utils/constants.dart';
import 'package:fluttergirls/widgets/video_player/video_player_widget.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          
          children: [
      Row(
        children: <Widget>[
          EventDetails(
            title: 'FLUTTER FOR GIRLS',
            content: EVENT_DESC,
            type: 'heading',
          ),
          Expanded(
            child: Center(
              child: CallToAction('Register'),
            ),
          ),
        ],
      ),
      SizedBox(height: SIZEDBOX_HEIGHT,),
      Row(
        children: <Widget>[
          EventDetails(
            title: 'VENUE',
            content: VENUE_DESC,
            type: 'subHeading',
          ),
          Expanded(
            child: Center(
              child: VideoPlayerScreen(),
            ),
          ),
        ],
      )
    ]));
  }
}
