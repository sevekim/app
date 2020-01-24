import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package: /model/eventLocation.dart';

class SubmitPageLocationSearchTabAppBarBackButton extends StatelessWidget {
  const SubmitPageLocationSearchTabAppBarBackButton({Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 8.0,
        right: 15.0,
      ),
      child: IconButton(
        color: Theme.of(context).textTheme.body1.color,
        icon: Icon(FontAwesomeIcons.arrowLeft),
        onPressed: () {
          //Empty object
          EventLocation eventLocation;
          Navigator.pop(context, eventLocation);
        },
        iconSize: 16.0,
      ),
    );
  }
}
