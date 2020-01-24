import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package: /model/eventLocation.dart';
import 'package: /utilities/googleMap.dart';
import 'package:uuid/uuid.dart';

////////////////////////////////////////////
/// _locationResult is from the main event input page
/// Once a location is chosen, it will replace _locationResult
/// If no location is chosen or there is no change,
/// then it will simply be returned back without any change
///////////////////////////////////////////
class PlaceSearchProvider with ChangeNotifier {
  EventLocation _eventLocation = EventLocation();
  EventLocation _locationResult = EventLocation();
  Completer<GoogleMapController> _mapController = Completer();
  Set<Marker> _markers = Set();
  double _defaultCameraZoom = 14;

  EventLocation get locationResult => _locationResult;
  EventLocation get eventLocation => _eventLocation;
  Set<Marker> get markers => _markers;

  //Initially, both are the same value
  //And only _eventLocation gets changed
  //Whereas _locationResult's value is maintained throughout
  set setLocationResult(EventLocation value) {
    _locationResult = value;
    _eventLocation = value;
  }

////////////////////////////////////////////
  /// Once a location is selcted, process them
///////////////////////////////////////////

  void processSelectedLocation({EventLocation selectedLocation}) {
    //Private
  }

  void returnSelectedLocationData({BuildContext context}) {
    _locationResult = _eventLocation;
    returnBackToInputField(context: context);
  }

////////////////////////////////////////////
  /// Genearl Part
///////////////////////////////////////////

  void moveToLocation(LatLng latLng) {
    //Private
  }

  void clearSearchResult() {
    _eventLocation = EventLocation();
    _locationResult = EventLocation();
    _markers.clear();
    notifyListeners();
  }

  void returnBackToInputField({BuildContext context}) {
    //It will carry the eventLocation,
    // either cleared, updated or new
    Navigator.pop(context, _locationResult);
  }

  CameraPosition initialCameraPosition() {
    //Private
  }

  CameraPosition cameraPosition({LatLng location}) {
    return CameraPosition(
      target: location,
      zoom: _defaultCameraZoom,
    );
  }

  /// Moves the marker to the indicated lat,lng
  void setMarker({LatLng latLng}) {
    _markers.clear();
    _markers.add(
      Marker(
        markerId: MarkerId(Uuid().v4()),
        position: latLng,
      ),
    );
  }

////////////////////////////////////////////
  /// SubmiPageLocationSearchBody Part
  /// - Without Previous location
  /// - Zoom into the user location if available,
  /// - Otherwise, stay at the Camera position
///////////////////////////////////////////

  void onMapCreated(GoogleMapController controller) async {
    await waitForMapToComplete(controller);

    //Check that there is no previous location
    if (_eventLocation.placeID == null) {
      moveToCurrentUserLocation();
    }
  }

  Future<void> waitForMapToComplete(GoogleMapController controller) async {
    _mapController.complete(controller);
  }

  Future<void> moveToCurrentUserLocation() async {
    //Check that current user location is available
    LatLng userLocation = await getCurrentUserLocation();

    //User location is available
    if (userLocation != null) {
      moveToLocation(userLocation);
    }
  }

  Future<LatLng> getCurrentUserLocation() async {
    Location location = Location();
    Future<LatLng> userLocation;

    userLocation = location.getLocation().then((locationData) async {
      LatLng latLng = LatLng(
        locationData.latitude,
        locationData.longitude,
      );

      return latLng;
    }).catchError((error) {
      print('UserLocation error: $error');
      return null;
    });

    return userLocation;
  }
}
