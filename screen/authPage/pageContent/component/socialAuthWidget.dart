import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package: ../widgets/socialButton/socialButton.dart';

class SocialLoginWidget extends StatelessWidget {
  const SocialLoginWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SocialButton(
          buttonTitle: 'Facebook',
          iconType: FontAwesomeIcons.facebook,
        ),
        SocialButton(
          buttonTitle: 'Gmail',
          iconType: FontAwesomeIcons.google,
        ),
      ],
    );
  }
}
