import 'package:flutter/material.dart';
import 'package: ../model/event.dart';
import 'package: ../utilities/loggedinUser.dart';
import 'package: ../utilities/stringConstant.dart';

class DropDownMenuItems {
  static List<DropdownMenuItem<String>> itemsBasedOnAuth(Post post) {
    List<DropdownMenuItem<String>> list = [];
    String currentLoggedInUserID = currentLoggedInUser.uid;

    //Determine if it is the post owner or not
    if (post.authorID == currentLoggedInUserID) {
      list = [
        DropdownMenuItem<String>(
          value: editConstant,
          child: Text(editConstant),
        ),
        DropdownMenuItem<String>(
          value: deleteConstant,
          child: Text(deleteConstant),
        ),
      ];
    } else {
      list = [
        DropdownMenuItem<String>(
          value: reportConstant,
          child: Text(reportConstant),
        )
      ];
    }

    return list;
  }
}
