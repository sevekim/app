import 'package:flutter/material.dart';
import 'package: /utilities/stringConstant.dart';

class GeneralAlertDialog {
  Future<String> displayDialogWithOptions({
    BuildContext context,
    String dialogType,
  }) async {
    Map<String, Text> dialogText = {};

    if (dialogType == deleteConstant) {
      dialogText = removePostType();
    }

    return showDialog<String>(
      context: context, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: dialogText['header'],
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[dialogText['subHeader']],
            ),
          ),
          actions: generalDialogOptions(context: context),
        );
      },
    );
  }

  Map<String, Text> removePostType() {
    Map<String, Text> map = {
      'header': Text('Confirm delete'),
      'subHeader': Text('Are you sure you want to delete the post?'),
    };

    return map;
  }

  //Show different types of options
  List<Widget> generalDialogOptions({BuildContext context}) {
    return <Widget>[
      FlatButton(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop('cancel');
        },
      ),
      FlatButton(
        child: Text('Confirm'),
        onPressed: () {
          Navigator.of(context).pop('confirm');
        },
      ),
    ];
  }
}
