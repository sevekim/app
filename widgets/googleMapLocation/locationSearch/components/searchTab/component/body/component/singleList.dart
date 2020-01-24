import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/locationInput/model/autoCompleteResult.dart';

class SubmitPageLocationSingleItemStructure {
  List<TextSpan> displayLocationResult(
      {BuildContext context, AutoCompleteItem singleItem}) {
    final List<TextSpan> result = [];

    //Starting Text
    String startText = singleItem.fullName.substring(0, singleItem.offset);
    if (startText.isNotEmpty) {
      result.add(
        TextSpan(
          text: startText,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      );
    }

    //Bold Text
    String boldText = singleItem.fullName
        .substring(singleItem.offset, singleItem.offset + singleItem.length);
    result.add(
      TextSpan(
        text: boldText,
        style: TextStyle(
          fontSize: 15,
          color: Theme.of(context).textTheme.body1.color,
        ),
      ),
    );

    //Remaining Text
    String remainingText =
        singleItem.fullName.substring(singleItem.offset + singleItem.length);
    result.add(
      TextSpan(
        text: remainingText,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );

    return result;
  }
}
