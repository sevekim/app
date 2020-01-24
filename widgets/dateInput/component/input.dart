import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageDateDisplayContent extends StatelessWidget {
  const SubmitPageDateDisplayContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    return Selector<SubmitPageProvider, String>(
      selector: (buildContext, provider) => provider.dateTimeDisplay,
      builder: (_, dateTimeDisplay, __) {
        return dateTimeDisplay != null
            ? style.dateDisplay(dateTimeDisplay)
            : style.dateDisplay('Anytime');
      },
    );
  }
}
