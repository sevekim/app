import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/searchTabProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageLocationSearchTabAppBarSearchButton extends StatelessWidget {
  const SubmitPageLocationSearchTabAppBarSearchButton({Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LocationSearchTab provider = Provider.of<LocationSearchTab>(
      context,
      listen: true,
    );

    return Expanded(
      child: TextField(
        autofocus: true,
        controller: provider.textController,
        decoration: InputDecoration(
          hintText: "Search places",
          border: InputBorder.none,
        ),
        onChanged: (value) {
          provider.fetchLocationResult(
            place: value,
          );
        },
      ),
    );
  }
}
