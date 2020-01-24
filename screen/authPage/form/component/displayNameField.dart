import 'package:flutter/material.dart';
import 'package: ../services/authService/authService.dart';
import 'package:provider/provider.dart';

class DisplayNameField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<FirebaseAuthService>(context);
    final bool showLoading = authService.showLoading;
    final String displayname = authService.displayName;

    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (input) {
        return input.trim().isEmpty ? 'Please enter your name' : null;
      },
      initialValue: displayname ?? null,
      enabled: showLoading
        ? false
        : true,
      style: TextStyle(fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        hintText: 'Your name',
        labelStyle: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
      onSaved: (input) {
        authService.setName = input;
      },
    );
  }
}
