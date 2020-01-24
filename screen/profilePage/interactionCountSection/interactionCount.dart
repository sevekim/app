import 'package:flutter/material.dart';
import 'package: ../style/inputStyle.dart';
import 'package: ../style/styleConstant.dart';
import 'package: ../widgets/post/submit/component/preview/component/widget/midDot.dart';

class PostInteractionCount extends StatelessWidget {
  const PostInteractionCount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();

    return style.detailMainPaddingContainerLRB(
      bottomPadding: largeSize,
      child: Row(
        children: <Widget>[
          //like/comment/share
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                style.inputTextField('19 Likes'),
                MidDot(),
                style.inputTextField('672 Comments'),
              ],
            ),
          ),
          style.inputTextField('25 going'),
        ],
      ),
    );
  }
}
