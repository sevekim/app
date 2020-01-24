import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/mapProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageLocationSearchAppBarBackButton extends StatelessWidget {
  const SubmitPageLocationSearchAppBarBackButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PlaceSearchProvider provider = Provider.of<PlaceSearchProvider>(
      context,
      listen: false,
    );

    return Container(
      padding: EdgeInsets.only(left: 8.0),
      child: IconButton(
        color: Theme.of(context).textTheme.body1.color,
        icon: Icon(FontAwesomeIcons.arrowLeft),
        onPressed: () {
          provider.returnBackToInputField(context: context);
        },
        iconSize: 16.0,
      ),
    );
  }
}
