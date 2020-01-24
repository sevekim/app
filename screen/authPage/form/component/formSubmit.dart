import 'package:flutter/material.dart';
import 'package: ../services/authService/authService.dart';
import 'package:provider/provider.dart';

class AuthFormSubmit extends StatelessWidget {
  final GlobalKey<FormState> authFormKey;
  final String formType;
  final String buttonText;
  const AuthFormSubmit({this.buttonText, this.authFormKey, this.formType});

  @override
  Widget build(BuildContext context) {
    final FirebaseAuthService authService =
        Provider.of<FirebaseAuthService>(context);
    final bool showLoading = authService.showLoading;
    return //submit button
        Container(
      padding: EdgeInsets.only(top: 30.0),
      width: double.infinity,
      child: FlatButton(
        onPressed: showLoading
            ? null
            : () {
                authService.formSubmit(
                  formKey: authFormKey,
                  formType: formType,
                  context: context,
                );
              },
        disabledColor: Colors.grey[400],
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
            ),
          ),
        ),
        color: Theme.of(context).primaryColor,
        shape: StadiumBorder(),
      ),
    );
  }
}
