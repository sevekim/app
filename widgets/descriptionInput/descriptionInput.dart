import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /style/styleConstant.dart';

import 'component/input.dart';
import 'component/surfixOptions.dart';

class SubmitPageDescriptionInput extends StatelessWidget {
  const SubmitPageDescriptionInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();

    return style.outerMostContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          style.iconPart(
              icon: Icons.event_note,
              rightPadding: containerOuterPaddingHorizontal),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: style.inputNameFieldPart(
                        name: 'Description',
                      ),
                    ),
                    SubmitPageDescriptionSurfixOption(),
                  ],
                ),
                SubmitPageDescriptionInputField(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
