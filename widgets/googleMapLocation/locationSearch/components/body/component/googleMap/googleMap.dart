import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/mapProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageLocationSearchBodyGoogleMap extends StatelessWidget {
  const SubmitPageLocationSearchBodyGoogleMap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PlaceSearchProvider provider = Provider.of<PlaceSearchProvider>(
      context,
      listen: false,
    );
    return GoogleMap(
      initialCameraPosition: provider.initialCameraPosition(),
      myLocationEnabled: true,
      onMapCreated: provider.onMapCreated,
      markers: provider.markers,
    );
  }
}
