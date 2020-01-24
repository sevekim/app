import 'package:flutter/material.dart';
import 'package: ../model/event.dart';
import 'package: ../widgets/post/detail/postDetail.dart';
import 'displaySingleImage.dart';

class ThumbnailImageHolder extends StatelessWidget {
  final List<dynamic> imageList;
  final Post post;
  const ThumbnailImageHolder({
    Key key,
    this.imageList,
    this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return imageList != null && imageList.length > 0
        ? GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PostDetail(
                    post: post,
                  ),
                ),
              );
            },
            child: SingleImageDisplayFromList(imageList: imageList),
          )
        : Container();
  }
}
