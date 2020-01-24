import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/style/inputFieldStyle.dart';

import 'component/input.dart';
import 'component/surfixOption.dart';

class SubmitPagePriceInput extends StatelessWidget {
  const SubmitPagePriceInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SubmitPageInputFieldStyle inputStyle = SubmitPageInputFieldStyle();

    return inputStyle.inputWithTextField(
      icon: Icons.attach_money,
      inputName: 'Price',
      topPadding: 0.0,
      bottomPadding: 0.0,
      inputElement: SubmitPagePriceInputTextField(),
      surfixElement: SubmitPagePriceInputSurfixOption(),
    );
  }
}
