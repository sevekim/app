import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package: ../style/inputStyle.dart';

class PostSocialInteraction extends StatelessWidget {
  const PostSocialInteraction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          style.interactionIconButton(
            FontAwesomeIcons.heart
          ),
          style.interactionIconButton(
            FontAwesomeIcons.comment
          ),
          style.interactionIconButton(
             FontAwesomeIcons.shareSquare
          ),
        ],
      ),
    );
  }
}
