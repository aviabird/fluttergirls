import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  const EventDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('FLUTTER', style: TextStyle(fontWeight: FontWeight.w800, height: 0.9, fontSize: 80),
          ),
          SizedBox(height: 30,),
          Text('Is Google’s UI toolkit for buildingbeautiful, natively compiled applicationsformobile,web, anddesktopfrom a singlecodebase.',
          style: TextStyle(fontSize: 21, height: 1.7),),
        ],
      ),
    );
  }
}