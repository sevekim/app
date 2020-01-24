import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package: /widgets/post/submit/style/inputFieldStyle.dart';
import 'package:provider/provider.dart';

import 'component/input.dart';
import 'component/surfixOptions.dart';

class SubmitPageDateTimeInput extends StatelessWidget {
  const SubmitPageDateTimeInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SubmitPageInputFieldStyle inputStyle = SubmitPageInputFieldStyle();
    final provider = Provider.of<SubmitPageProvider>(
      context,
      listen: false,
    );

    return inputStyle.inputWithPushNav(
      icon: Icons.event,
      inputName: 'Start Time',
      inputElement: SubmitPageDateDisplayContent(),
      surfixElement: SubmitPageDateSurfixOption(),
      mainOnTapFunction: () async => provider.getDateAndTime(context: context),
    );
  }
}
