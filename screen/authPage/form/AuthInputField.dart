import 'package:flutter/material.dart';
import 'package: ../screen/authPage/form/component/displayNameField.dart';
import 'package: ../screen/authPage/form/component/emailField.dart';
import 'package: ../utilities/stringConstant.dart';
import 'component/formSubmit.dart';
import 'component/notificationMessage.dart';
import 'component/passwordForLogin.dart';
import 'component/passwordForSignUp.dart';

class AuthInputField extends StatefulWidget {
  final String authPageType, buttonText;
  const AuthInputField({
    this.authPageType,
    this.buttonText,
  });

  @override
  _AuthInputFieldState createState() => _AuthInputFieldState();
}

class _AuthInputFieldState extends State<AuthInputField> {
  final signUpFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final String type = widget.authPageType;
    final String buttonText = widget.buttonText;

    return //form
        Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: Form(
        key: signUpFormKey,
        child: Column(
          children: <Widget>[
            //Name
            type == signupPageConstatnt ? DisplayNameField() : Container(),
            //Email
            EmailField(),
            //Space
            SizedBox(
              height: 10.0,
            ),
            //Password Section
            displayPasswordFields(type: type),

            //Display Error Message
            NotificationMessage(),

            //Form submit key
            AuthFormSubmit(
              authFormKey: signUpFormKey,
              formType: type,
              buttonText: buttonText,
            ),
          ],
        ),
      ),
    );
  }

  displayPasswordFields({String type}) {
    if (type == signupPageConstatnt) {
      return PasswordForSignUp(type: type);
    } else {
      return PasswordForLogIn(type: type);
    }
  }
}
