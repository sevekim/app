import 'package:flutter/material.dart';

import 'components/backButton.dart';
import 'components/clearButton.dart';
import 'components/searchTextField.dart';

class SubmitPageLocationSearchTabAppBar extends StatelessWidget
    with PreferredSizeWidget {
  SubmitPageLocationSearchTabAppBar({Key key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Container(
        margin: EdgeInsets.only(top: 7.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: Colors.grey[350], width: 0.5, style: BorderStyle.solid),
          color: Theme.of(context).canvasColor,
        ),
        child: Row(
          children: <Widget>[
            SubmitPageLocationSearchTabAppBarBackButton(),
            SubmitPageLocationSearchTabAppBarSearchButton(),
            SubmitPageLocationSearchTabAppBarClearButton(),
          ],
        ),
      ),
    );
  }
}
