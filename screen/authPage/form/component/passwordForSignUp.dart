import 'package:flutter/material.dart';
import 'package: ../services/authService/authService.dart';
import 'package:provider/provider.dart';

class PasswordForSignUp extends StatelessWidget {
  final String type;
  const PasswordForSignUp({this.type});

  @override
  Widget build(BuildContext context) {
    final authService =
        Provider.of<FirebaseAuthService>(context, listen: false);
    final String password = authService.password;
    final bool showLoading = authService.showLoading;
    final TextEditingController _passwordController =
        new TextEditingController(text: password);

    return //Password
        Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextFormField(
          enabled: showLoading ? false : true,
          controller: _passwordController,
          obscureText: true,
          validator: (input) {
            return input.length < 6 ? 'Must be at least 6 charactesrs' : null;
          },
          style: TextStyle(fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            hintText: 'Password',
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          onSaved: (input) {
            authService.setPassword = input;
          },
        ),
        TextFormField(
          enabled: showLoading ? false : true,
          obscureText: true,
          initialValue: password ?? null,
          validator: (String value) {
            if (_passwordController.text != value) {
              return 'Passwords do not match';
            }
            return null;
          },
          style: TextStyle(fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            hintText: 'Confirm Password',
            labelStyle: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
