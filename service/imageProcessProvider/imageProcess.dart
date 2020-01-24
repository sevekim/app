import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package: /widgets/post/submit/component/input/imageInput/component/imagePicker/inputModal/imageInputModal.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageImageProcess {
  Future<void> pickImage({BuildContext context}) async {
    ImageSource source =
        await SubmitPageImageInputModal().showMediaDialog(context: context);

    if (source != null) {
      File croppedImage = await handleImage(context: context, source: source);

      if (croppedImage != null) {
        //Upload the image in the background
        Provider.of<SubmitPageProvider>(
          context,
          listen: false,
        ).uploadImage(imageFile: croppedImage, context: context);
      }
    }
  }

  Future<File> handleImage({ImageSource source, BuildContext context}) async {
    //Private
  }

  Future<File> _cropImage({File imageFile}) async {
    //Private
  }

  List<Image> addToImageList({List<dynamic> images}) {
    //Private
  }
}
