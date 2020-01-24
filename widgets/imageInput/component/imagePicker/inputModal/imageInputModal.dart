import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SubmitPageImageInputModal {
  Future<ImageSource> showMediaDialog({BuildContext context}) async {
    ImageSource source = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Add Photo'),
          children: <Widget>[
            _createOptions(
                name: 'Take a photo',
                context: context,
                source: ImageSource.camera),
            SizedBox(
              height: 10.0,
            ),
            _createOptions(
                name: 'Choose from gallery',
                context: context,
                source: ImageSource.gallery),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              color: Colors.grey,
            ),
            _createOptions(
              name: 'Cancel',
              context: context,
            ),
          ],
        );
      },
    );

    return source;
  }

  Widget _createOptions({
    String name,
    BuildContext context,
    ImageSource source,
  }) {
    return SimpleDialogOption(
      child: Text(
        name,
        style: TextStyle(
          fontSize: 18.0,
        ),
      ),
      onPressed: () => Navigator.pop(context, source),
    );
  }
}
