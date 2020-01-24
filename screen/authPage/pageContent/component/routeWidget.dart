import 'package:flutter/material.dart';
import 'package: ../services/authService/authService.dart';
import 'package: ../services/navigator.dart';
import 'package:provider/provider.dart';

class RouteWidget extends StatelessWidget {
  final String routeWidgetTitle;
  const RouteWidget({this.routeWidgetTitle});

  @override
  Widget build(BuildContext context) {
    final FirebaseAuthService authService =
        Provider.of<FirebaseAuthService>(context);
    final bool showLoading = authService.showLoading;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FlatButton(
          onPressed: showLoading
              ? null
              : () {
                  SiteNavigator().authNavigator(
                    context: context,
                    route: routeWidgetTitle,
                  );
                },
          child: Text(
            routeWidgetTitle,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
