import 'package:flutter/material.dart';
import 'package: ../model/route.dart';
import 'package: ../screen/authPage/form/component/emailField.dart';
import 'package: ../screen/authPage/form/component/formSubmit.dart';
import 'package: ../screen/authPage/form/component/notificationMessage.dart';
import 'package: ../services/authService/authService.dart';
import 'package: ../utilities/stringConstant.dart';
import 'package: ../widgets/loading/incorporateLoadingBar.dart';
import 'package: ../widgets/loading/loadingBar.dart';
import 'package:provider/provider.dart';

class PasswordResetContent extends StatefulWidget {
  const PasswordResetContent({Key key}) : super(key: key);

  @override
  _PasswordResetContentState createState() => _PasswordResetContentState();
}

class _PasswordResetContentState extends State<PasswordResetContent> {
  final passwordResetKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Map<String, String> pageParts =
        PageParts().pageTitleName[passwordResetConstatnt];
    final String screenTitle = pageParts[screenTitleConstatnt];

    Container mainWidget = Container(
      padding: EdgeInsets.only(
        top: 25.0,
        left: 30.0,
        right: 30.0,
        bottom: 30.0,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
        child: Form(
          key: passwordResetKey,
          child: Column(
            children: <Widget>[
              EmailField(),
              NotificationMessage(),
              //Form submit key
              AuthFormSubmit(
                authFormKey: passwordResetKey,
                formType: passwordResetConstatnt,
                buttonText: screenTitle,
              ),
            ],
          ),
        ),
      ),
    );

    Selector selector = Selector<FirebaseAuthService, bool>(
      selector: (buildContext, loadingWidget) => loadingWidget.showLoading,
      builder: (_, showLoading, __) {
        return LoadingBar(
          isLoading: showLoading,
        );
      },
    );

    return Container(
      child: IncorporateLoadingBar().incorporateLoadingBar(
        mainWidget: mainWidget,
        selector: selector,
      ),
    );
  }
}
