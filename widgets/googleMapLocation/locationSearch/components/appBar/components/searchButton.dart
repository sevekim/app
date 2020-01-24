import 'package:flutter/material.dart';
import 'package:/model/eventLocation.dart';
import 'package:/widgets/post/submit/component/input/locationInput/locationSearch/components/searchTab/searchTabParent.dart';
import 'package:/widgets/post/submit/component/input/locationInput/service/mapProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageLocationSearchAppBarSearchButton extends StatelessWidget {
  const SubmitPageLocationSearchAppBarSearchButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PlaceSearchProvider provider = Provider.of<PlaceSearchProvider>(
      context,
      listen: true,
    );

    return Expanded(
      child: FlatButton(
        onPressed: () async {
          EventLocation eventLocation = await Navigator.push(
            context,
            //No transition animation
            PageRouteBuilder(
              pageBuilder: (context, anim1, anim2) =>
                  SubmitPageLocationSearchTab(),
              transitionsBuilder: (context, anim1, anim2, child) =>
                  Container(child: child),
            ),
          );

          //If a result is returned
          if (eventLocation != null) {
            provider.processSelectedLocation(
              selectedLocation: eventLocation,
            );
          }
        },
        child: Align(
          alignment: Alignment.centerLeft,
          child: provider.eventLocation.fullName != null
              ? Text(
                  provider.eventLocation.fullName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[700],
                  ),
                )
              : Text(
                  'Search places',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[500],
                  ),
                ),
        ),
      ),
    );
  }
}
