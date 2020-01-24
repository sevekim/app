import 'package:flutter/material.dart';
import 'package: ../model/event.dart';
import 'package: ../style/inputStyle.dart';
import 'package: ../widgets/post/detail/postDetail.dart';
import 'package: ../widgets/post/parts/postTitleHeaderSection/parts/header.dart';

import 'parts/dropdown/dropDownButton.dart';

class PostTitleSection extends StatelessWidget {
  final Post post;
  final bool isPreview;
  final int index;
  final bool showDropDownMenu;
  const PostTitleSection({
    Key key,
    this.isPreview,
    this.post,
    this.index,
    this.showDropDownMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();

    return style.detailMainPaddingContainerLTRB(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: isPreview == false
                ? GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PostDetail(
                            post: post,
                            goToProfilePage: true,
                          ),
                        ),
                      );
                    },
                    child: PostTitleHeaderSection(
                      post: post,
                    ),
                  )
                : PostTitleHeaderSection(
                    post: post,
                  ),
          ),
          showDropDownMenu == true
              ? PostDropDownButton(
                  post: post,
                  index: index,
                )
              : Container(),
        ],
      ),
    );
  }
}
