import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/searchTabProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageLocationSearchTabAppBarClearButton extends StatelessWidget {
  const SubmitPageLocationSearchTabAppBarClearButton({Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LocationSearchTab provider = Provider.of<LocationSearchTab>(
      context,
      listen: true,
    );

    return provider.placeSuggestions.length > 0
        ? Container(
            padding: EdgeInsets.only(right: 8.0),
            child: IconButton(
              color: Colors.grey[600],
              icon: Icon(Icons.clear),
              onPressed: () {
                provider.clearSearchResult();
              },
              iconSize: 24.0,
            ),
          )
        : Container();
  }
}
