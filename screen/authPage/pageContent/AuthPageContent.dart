import 'package:flutter/material.dart';
import 'package: ../screen/authPage/form/AuthInputField.dart';
import 'component/alternateAuthTitle.dart';
import 'component/routeWidget.dart';
import 'component/socialAuthWidget.dart';
import 'component/titleWidget.dart';

class AuthPageContent extends StatelessWidget {
  final String routeTitle, screenTitle, authPageType;

  const AuthPageContent({
    this.routeTitle,
    this.screenTitle,
    this.authPageType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25.0, left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //RouteWidget
          RouteWidget(
            routeWidgetTitle: routeTitle,
          ),
          //Title of screen
          TitleWidget(
            screenWidgetTitle: screenTitle,
          ),
          //Forms: signup
          AuthInputField(
            authPageType: authPageType,
            buttonText: screenTitle,
          ),
          //Alternatve Auth Sign up
          AlternateAuthTitle(
            screenWidgetTitle: screenTitle,
          ),
          //Social button
          SocialLoginWidget(),
        ],
      ),
    );
  }
}
