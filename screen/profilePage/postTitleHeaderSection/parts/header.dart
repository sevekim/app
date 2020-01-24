import 'package:flutter/material.dart';
import 'package: ../model/event.dart';
import 'package: ../style/inputStyle.dart';
import 'subheader/subHeader.dart';

class PostTitleHeaderSection extends StatelessWidget {
  final Post post;
  const PostTitleHeaderSection({
    Key key,
    this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //TODO: Icon has padding, thus need to line it up
        //by wrapping it in a container
        Container(
          padding: EdgeInsets.only(
            left: 3.0,
          ),
          child: style.inputTextName(post.postTitle),
        ),
        //Sub header section
        PostTitleSubHeaderSection(
          post: post,
        ),
      ],
    );
  }
}
