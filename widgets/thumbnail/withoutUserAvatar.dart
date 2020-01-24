import 'package:flutter/material.dart';
import 'package:/model/event.dart';
import 'package:/widgets/post/parts/imageSection/singleImage/imageHolder.dart';
import 'package:/widgets/post/parts/postTitleHeaderSection/postTitleSection.dart';

class ThumbnailWithoutUserAvatar extends StatelessWidget {
  final Post post;
  final int index;
  final bool isPreview;
  final bool showDropDownMenu;
  const ThumbnailWithoutUserAvatar({
    Key key,
    this.post,
    this.index,
    this.isPreview = false,
    this.showDropDownMenu = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> imageList = post.imageUrlList;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ThumbnailImageHolder(
            imageList: imageList,
            post: post,
          ),
          PostTitleSection(
            isPreview: isPreview,
            post: post,
            index: index,
            showDropDownMenu: showDropDownMenu,
          )
        ],
      ),
    );
  }
}
