import 'package:flutter/material.dart';
import 'package: ../services/authService/authService.dart';
import 'package:provider/provider.dart';

class NotificationMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FirebaseAuthService authService =
        Provider.of<FirebaseAuthService>(context);
    final String notificationMessage = authService.notificationMessage;
    final bool isItSuccess = authService.isItSuccess;

    return Container(
      margin: EdgeInsets.only(top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          if (notificationMessage != null)
            Text(
              notificationMessage,
              style: TextStyle(
                color:
                    isItSuccess ? Colors.green : Theme.of(context).primaryColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
        ],
      ),
    );
  }
}
