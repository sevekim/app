import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package: ../widgets/post/parts/imageSection/part/imageParts.dart';

class SingleImageDisplayFromList extends StatelessWidget {
  final List<dynamic> imageList;
  const SingleImageDisplayFromList({
    Key key,
    this.imageList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    ImageParts parts = ImageParts();

    List<dynamic> list = imageList[0].values.toList();

    return Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        CachedNetworkImage(
          imageUrl: list[0],
          width: size,
          height: size,
          fadeOutDuration: Duration(milliseconds: 100),
          fadeInDuration: Duration(milliseconds: 100),
          placeholder: (context, url) {
            return parts.imagePlaceHolder(
                size: size, child: CircularProgressIndicator());
          },
          errorWidget: (context, url, error) {
            return parts.imagePlaceHolder(size: size, child: Icon(Icons.error));
          },
        ),
        imageList.length > 1
            ? Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                ),
                child: Text(
                  '+ ${imageList.length - 1}',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.grey[100],
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                        blurRadius: 13.0,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
