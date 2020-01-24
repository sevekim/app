import 'package:flutter/material.dart';

class ImageParts {
  Container imagePlaceHolder({double size, Widget child}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
