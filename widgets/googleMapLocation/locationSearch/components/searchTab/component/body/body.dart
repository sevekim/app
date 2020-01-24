import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/locationInput/model/autoCompleteResult.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/searchTabProvider.dart';
import 'package:provider/provider.dart';

import 'component/resultList.dart';

class SubmitPageLocationSearchTabBody extends StatelessWidget {
  const SubmitPageLocationSearchTabBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LocationSearchTab provider = Provider.of<LocationSearchTab>(
      context,
    );

    List<AutoCompleteItem> placeSuggestions = provider.placeSuggestions;

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[300],
        ),
        itemCount: placeSuggestions.length,
        itemBuilder: (context, index) {
          return SubmitPageLocationSearchTabResult(
            item: placeSuggestions[index],
          );
        },
      ),
    );
  }
}
