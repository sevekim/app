import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/mapProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageLocationSearchAppBarClearButton extends StatelessWidget {
  const SubmitPageLocationSearchAppBarClearButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PlaceSearchProvider provider = Provider.of<PlaceSearchProvider>(
      context,
      listen: true,
    );

    return provider.eventLocation.fullName != null
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
