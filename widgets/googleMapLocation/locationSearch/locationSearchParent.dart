import 'package:flutter/material.dart';
import 'package:/model/eventLocation.dart';
import 'package:/widgets/post/submit/component/input/locationInput/service/mapProvider.dart';
import 'package:provider/provider.dart';
import 'locationSearchChild.dart';

class SubmitPageLocationSearch extends StatelessWidget {
  final EventLocation previousLocation;

  SubmitPageLocationSearch({this.previousLocation});

  @override
  Widget build(BuildContext context) {
   
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PlaceSearchProvider>(
          create: (context) => PlaceSearchProvider(),
        ),
      ],

      child: SubmitPageLocationSearchChild(
        previousLocation: previousLocation,
      ),
    );
  }
}
