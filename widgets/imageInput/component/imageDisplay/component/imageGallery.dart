import 'package:flutter/material.dart';
import 'imageOptions.dart';

class SubmitPageImageGallery extends StatelessWidget {
  final List<Image> imageList;
  const SubmitPageImageGallery({Key key, this.imageList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: imageList.length,
      child: Builder(
        builder: (BuildContext context) {
          TabController controller = DefaultTabController.of(context);
          controller.animateTo(imageList.length - 1);

          return Container(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                TabBarView(
                  children: imageList,
                ),
                ImageOptions(controller: controller),
              ],
            ),
          );
        },
      ),
    );
  }
}
