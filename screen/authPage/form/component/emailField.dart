import 'package:flutter/material.dart';
import 'package: ../services/authService/authService.dart';
import 'package:provider/provider.dart';

class EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<FirebaseAuthService>(context);
    final String userEmail = authService.email;
    final bool showLoading = authService.showLoading;
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      initialValue: userEmail ?? null,
      enabled: showLoading ? false : true,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Email is required';
        }
        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      style: TextStyle(fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        hintText: 'Email',
        labelStyle: TextStyle(
          fontWeight: FontWeight.w400,
        ),
      ),
      onSaved: (input) {
        authService.setEmail = input;
      },
    );
  }
}
