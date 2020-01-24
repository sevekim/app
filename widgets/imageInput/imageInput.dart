import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';
import 'component/imagePicker/imagePicker.dart';
import 'component/imageDisplay/showImages.dart';

class SubmitPageImageInput extends StatelessWidget {
  final double screenWidth;

  const SubmitPageImageInput({Key key, this.screenWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenWidth,
      width: screenWidth,
      color: Colors.grey[300],
      child: Selector<SubmitPageProvider, bool>(
        selector: (buildContext, imageProvider) =>
            imageProvider.updateImageMapStatus(),
        builder: (_, imageMapEmpty, __) {
          return imageMapEmpty == true
              ? SubmitPageImagePicker()
              : SubmitPageImageDisplayAfterPicked();
        },
      ),
    );
  }
}
