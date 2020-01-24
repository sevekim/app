
import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/imageInput/service/imageProcess.dart';

class SubmitPageImagePicker extends StatelessWidget {
  const SubmitPageImagePicker({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        SubmitPageImageProcess().pickImage(context: context);
      },
      child: Icon(
        Icons.add_a_photo,
        color: Colors.white70,
        size: 150.0,
      ),
    );
  }
}
