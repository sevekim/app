import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/mapProvider.dart';
import 'package:provider/provider.dart';
import 'component/googleMap/googleMap.dart';
import 'component/selectedPlaceBar/selectedPlaceBar.dart';

class SubmitPageLocationSearchBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PlaceSearchProvider provider = Provider.of<PlaceSearchProvider>(
      context,
      listen: true,
    );
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        SubmitPageLocationSearchBodyGoogleMap(),
        provider.eventLocation.fullName != null
            ? SubmitPageLocationResultDisplay()
            : Container(),
      ],
    );
  }
}
