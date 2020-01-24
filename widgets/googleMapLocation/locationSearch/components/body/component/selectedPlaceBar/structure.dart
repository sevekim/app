import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/mapProvider.dart';
import 'package:provider/provider.dart';

class SelectPlaceAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PlaceSearchProvider provider = Provider.of<PlaceSearchProvider>(
      context,
      listen: false,
    );

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.grey[350],
          width: 0.5,
          style: BorderStyle.solid,
        ),
        color: Theme.of(context).canvasColor,
      ),
      child: Row(
        children: <Widget>[
          //Name section
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                provider.eventLocation.fullName,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Tap to select this location",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          )),
          //Confirm section
          Icon(Icons.check),
        ],
      ),
    );
  }
}
