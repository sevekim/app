import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart';
import 'package: /model/eventLocation.dart';
import 'package: /services/gestureDetector/keyboardUnfocus.dart';
import 'package: /utilities/googleMap.dart';
import 'package: /widgets/post/submit/component/input/locationInput/model/autoCompleteResult.dart';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class LocationSearchTab with ChangeNotifier {
  EventLocation _eventLocation = EventLocation();
  int _locationBiasRadius = 100000; //in meter
  String sessionToken = Uuid().v4();
  List<AutoCompleteItem> _placeSuggestions = [];
  TextEditingController _textController = TextEditingController();

  TextEditingController get textController => _textController;
  List<AutoCompleteItem> get placeSuggestions => _placeSuggestions;

//////////////////////////////////////////////
  /// Get the selected place lat and lng
//////////////////////////////////////////////

  Future<void> locationSelected({
    AutoCompleteItem item,
    BuildContext context,
  }) async {
    try {
      await getSelectedLocationLatLng(placeId: item.id);
      await KeyboardUnfocus().dismissKeyboard(context);

      //Update the EventLocation model
      _eventLocation.placeID = item.id;
      _eventLocation.fullName = item.fullName;
      _eventLocation.displayName = item.displayName;

      Navigator.pop(
        context,
        _eventLocation,
      );
    } catch (err) {
      print('Caught error: $err');
    }
  }

  //Once a suggestion is selected,
  //Then need to get the lan and lng
  Future<void> getSelectedLocationLatLng({String placeId}) async {
    String endpoint =
        "https://maps.googleapis.com/maps/api/place/details/json?key=$kGoogleApiKey" +
            "&placeid=$placeId";

    try {
      Response response = await http.get(endpoint);
      dynamic decodedJson = jsonDecode(response.body)['result'];

      if (response.statusCode == 200) {
        Map<String, dynamic> location = decodedJson['geometry']['location'];

        //Update the value
        _eventLocation.latLng = LatLng(location['lat'], location['lng']);
        _eventLocation.address = decodedJson['formatted_address'];
      }
    } catch (err) {
      print('getSelectedLocationLatLng error: $err');
    }
  }
//////////////////////////////////////////////
  /// Get the place suggestions
//////////////////////////////////////////////

  void fetchLocationResult({String place}) {
    //Private
  }

  String fetchLocationResultInitialEndPoint({String place}) {
   //Private
  }

  String endPointForExistingLocation(String endpoint) {
    //Private
  }

  void callForGooglePlaceHTTP(String endpoint) {
    //Private
  }

//////////////////////////////////////////////
  /// Clear the result
//////////////////////////////////////////////

  void clearSearchResult() {
    //reset the _placeSuggestion
    _placeSuggestions = [];

    //Remove any text input on the field
    _textController.clear();

    notifyListeners();
  }
}
