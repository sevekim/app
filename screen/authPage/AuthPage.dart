import 'package:flutter/material.dart';
import 'package: ../model/route.dart';
import 'package: ../services/authService/authService.dart';
import 'package: ../utilities/stringConstant.dart';
import 'package: ../widgets/loading/incorporateLoadingBar.dart';
import 'package: ../widgets/loading/loadingBar.dart';
import 'package:provider/provider.dart';

import 'pageContent/AuthPageContent.dart';

class AuthPage extends StatelessWidget {
  final String authType;

  AuthPage({this.authType});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> pageParts = PageParts().pageTitleName[authType];
    final String routeTitle = pageParts[routeTitleConstatnt];
    final String screenTitle = pageParts[screenTitleConstatnt];

    Selector selector = Selector<FirebaseAuthService, bool>(
      selector: (buildContext, loadingWidget) => loadingWidget.showLoading,
      builder: (_, showLoading, __) {
        return LoadingBar(
          isLoading: showLoading,
        );
      },
    );

    AuthPageContent mainWidget = AuthPageContent(
      authPageType: authType,
      routeTitle: routeTitle,
      screenTitle: screenTitle,
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FirebaseAuthService>(
          create: (context) => FirebaseAuthService(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: IncorporateLoadingBar().incorporateLoadingBar(
              mainWidget: mainWidget,
              selector: selector,
            ),
          ),
        ),
      ),
    );
  }
}
