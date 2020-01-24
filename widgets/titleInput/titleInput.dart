import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /style/styleConstant.dart';

import 'component/input.dart';
import 'component/surfixOption.dart';

class SubmitPageTitleInput extends StatelessWidget {
  const SubmitPageTitleInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();

    return style.outerMostContainer(
      bottomPadding: 0.0,
      leftPadding: containerOuterPaddingVertical,
      child: Row(
        children: <Widget>[
          SubmitPageTitleInputTextField(),
          SubmitPageTitleInputSurfixOption(),
        ],
      ),
    );
  }
}
