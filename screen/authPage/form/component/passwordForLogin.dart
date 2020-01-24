import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package: ../services/authService/authService.dart';
import 'package: ../services/navigator.dart';
import 'package: ../utilities/stringConstant.dart';
import 'package:provider/provider.dart';

class PasswordForLogIn extends StatelessWidget {
  final String type;
  const PasswordForLogIn({this.type});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<FirebaseAuthService>(context);
    final String password = authService.password;
    final bool showLoading = authService.showLoading;

    return //Passw
        Row(
      children: <Widget>[
        Expanded(
          child: TextFormField(
            controller: TextEditingController(text: password),
            obscureText: true,
            enabled: showLoading ? false : true,
            validator: (input) {
              return input.length < 6 ? 'Must be at least 6 charactesrs' : null;
            },
            style: TextStyle(fontWeight: FontWeight.w500),
            decoration: InputDecoration(
              hintText: passwordConstant,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            onSaved: (input) {
              authService.setPassword = input;
            },
          ),
        ),
        IconButton(
          onPressed: showLoading
              ? null
              : () {
                  SiteNavigator().authNavigator(
                    context: context,
                    route: passwordResetConstant,
                  );
                },
          icon: Icon(FontAwesomeIcons.questionCircle),
          color: Colors.grey[500],
        ),
      ],
    );
  }
}
