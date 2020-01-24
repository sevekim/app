import 'package:flutter/material.dart';
import 'package:/model/event.dart';
import 'package:/screen/pages/routes/profilePage/generalProfileStructure/profilePageParent.dart';
import 'package:/style/styleConstant.dart';
import 'package:/widgets/post/parts/imageSection/singleImage/imageHolder.dart';
import 'package:/widgets/post/parts/postTitleHeaderSection/postTitleSection.dart';
import 'package:/widgets/post/submit/component/preview/component/body/authorSection/authorSection.dart';

class ThumbnailWithUserAvatar extends StatelessWidget {
  final Post post;
  final int index;
  const ThumbnailWithUserAvatar({
    Key key,
    this.post,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> imageList = post.imageUrlList;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePageParent(
                    profileUserID: post.authorID,
                  ),
                ),
              );
            },
            child: PostDetailAuthorSection(
              authorName: post.authorName,
              timestamp: post.timestamp,
              avatarSize: avatarMid,
            ),
          ),
          ThumbnailImageHolder(
            imageList: imageList,
            post: post,
          ),
          PostTitleSection(
            isPreview: false,
            post: post,
            index: index,
            showDropDownMenu: false,
          ),
          Divider(
            thickness: 20.0,
            color: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}
