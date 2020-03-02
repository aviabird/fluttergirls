import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:fluttergirls/utils/constants.dart';

class EventDetails extends StatefulWidget {
  final String title;
  final String content;
  final String type;
  EventDetails({this.content, this.title, this.type});

  @override
  State<StatefulWidget> createState() {
    return _EventDetails();
  }
}

class _EventDetails extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? TextAlign.left
              : TextAlign.center;
      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? widget.type == 'heading'
                  ? HEADING_FONT_SIZE_MOBILE
                  : widget.type == 'subHeading'
                      ? SUBHEADING_FONT_SIZE_MOBILE
                      : HEADING_FONT_SIZE_MOBILE
              : widget.type == 'heading'
                  ? HEADING_FONT_SIZE_TABLET
                  : widget.type == 'subHeading'
                      ? SUBHEADING_FONT_SIZE_TABLET
                      : HEADING_FONT_SIZE_TABLET;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? 16
              : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.title,
              style: TextStyle(
                  // fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleSize),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              widget.content,
              style: TextStyle(fontSize: descriptionSize, height: 1.7),
              textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}
