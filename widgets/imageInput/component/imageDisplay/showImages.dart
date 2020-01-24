import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/imageInput/service/imageProcess.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

import 'component/imageGallery.dart';

class SubmitPageImageDisplayAfterPicked extends StatelessWidget {
  const SubmitPageImageDisplayAfterPicked({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SubmitPageProvider provider =
        Provider.of<SubmitPageProvider>(context, listen: false);

    return Selector<SubmitPageProvider, int>(
      selector: (buildContext, imageProvider) => imageProvider.imageMaps.length,
      builder: (_, imageInt, __) {
        List<dynamic> images = provider.imageMaps;

        List<Image> imageList =
            SubmitPageImageProcess().addToImageList(images: images);

        return SubmitPageImageGallery(
          imageList: imageList,
        );
      },
    );
  }
}
