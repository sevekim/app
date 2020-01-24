import 'package:flutter/material.dart';
import 'package: ../services/authService/authService.dart';
import 'package: ../services/navigator.dart';
import 'package: ../utilities/stringConstant.dart';
import 'package:provider/provider.dart';

import 'pageContent/PasswordResetContent.dart';

class PasswordReset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FirebaseAuthService>(
      create: (context) => FirebaseAuthService(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: () {
              SiteNavigator().naviPop(context: context);
            },
          ),
          title: Text(passwordResetConstant),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: PasswordResetContent(),
          ),
        ),
      ),
    );
  }
}
