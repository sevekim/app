import 'package:flutter/material.dart';

class PostEventContact extends StatelessWidget {
  const PostEventContact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FlatButton(
      child: Text('Contact us'),
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
