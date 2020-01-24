import 'package:flutter/material.dart';
import 'package: ../style/inputStyle.dart';
import 'package: ../style/styleConstant.dart';

import 'parts/eventContact.dart';
import 'parts/socialInteraction.dart';

class PostInteraction extends StatelessWidget {
  const PostInteraction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();

    return style.detailMainPaddingContainerLRB(
      bottomPadding: largeSize,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //like/comment/share
          PostSocialInteraction(),

          //Price contact
          PostEventContact(),
        ],
      ),
    );
  }
}
