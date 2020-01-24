import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/locationInput/model/autoCompleteResult.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/searchTabProvider.dart';
import 'package:provider/provider.dart';

import 'singleList.dart';

class SubmitPageLocationSearchTabResult extends StatelessWidget {
  final AutoCompleteItem item;
  const SubmitPageLocationSearchTabResult({Key key, this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SubmitPageLocationSingleItemStructure structure =
        SubmitPageLocationSingleItemStructure();
    final LocationSearchTab provider = Provider.of<LocationSearchTab>(
      context,
      listen: false,
    );

    return FlatButton(
      onPressed: () async {
        provider.locationSelected(
          context: context,
          item: item,
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        child: RichText(
          text: TextSpan(
            children: structure.displayLocationResult(
              context: context,
              singleItem: item,
            ),
          ),
        ),
      ),
    );
  }
}
