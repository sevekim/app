import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/imageInput/service/imageProcess.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class ImageOptions extends StatelessWidget {
  final TabController controller;
  const ImageOptions({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SubmitPageProvider provider =
        Provider.of<SubmitPageProvider>(context, listen: false);

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.cancel,
              size: 34.0,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              int currentIndex = (controller.animation.value).round();
              provider.deleteCurrentIndexImage(currentIndex, context);
            },
          ),
          TabPageSelector(
            selectedColor: Theme.of(context).primaryColor,
          ),
          IconButton(
            icon: Icon(Icons.add_circle,
                size: 34.0, color: Theme.of(context).primaryColor),
            onPressed: () {
              SubmitPageImageProcess().pickImage(context: context);
            },
          ),
        ],
      ),
    );
  }
}
