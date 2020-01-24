import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String screenWidgetTitle;

  TitleWidget({this.screenWidgetTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Text(
        screenWidgetTitle,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

