import 'package:flutter/material.dart';

class AlternateAuthTitle extends StatelessWidget {
  final String screenWidgetTitle;

  const AlternateAuthTitle({this.screenWidgetTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Or $screenWidgetTitle with social account',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
