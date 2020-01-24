import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package: /style/inputStyle.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class SubmitPagePriceInputTextField extends StatelessWidget {
  const SubmitPagePriceInputTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    final provider = Provider.of<SubmitPageProvider>(
      context,
      listen: false,
    );

    return Container(
      padding: EdgeInsets.only(right: 5.0),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: provider.priceController,
        inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
        style: style.textStyleInput(),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Contact us',
          hintStyle: style.textStyleHint(),
        ),
        textAlign: TextAlign.end,
        onChanged: (input) => provider.priceInputCheck(),
      ),
    );
  }
}
