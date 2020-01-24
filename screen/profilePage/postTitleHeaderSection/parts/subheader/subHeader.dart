import 'package:flutter/material.dart';
import 'package: ../model/event.dart';
import 'package: ../style/inputStyle.dart';
import 'package: ../style/styleConstant.dart';
import 'package: ../widgets/post/submit/component/preview/component/widget/midDot.dart';

import 'displayTime.dart';

class PostTitleSubHeaderSection extends StatelessWidget {
  final Post post;
  const PostTitleSubHeaderSection({
    Key key,
    this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    String location = post.locationDisplayName;

    return Container(
      padding: EdgeInsets.only(
        top: containerInnerPaddingHorizontal,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          PostTitleSubHeaderTimeDisplay(
            post: post,
          ),
          //TODO: combine below condition to one
          location != null ? MidDot() : Container(),
          location != null
              ? Container(
                  padding: EdgeInsets.only(
                    right: smallSize,
                  ),
                  child: Icon(
                    Icons.location_on,
                    color: Colors.grey[400],
                  ),
                )
              : Container(),
          location != null
              ? Expanded(
                  child: Text(
                    location,
                    overflow: TextOverflow.ellipsis,
                    style: style.textStyleInput(),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
