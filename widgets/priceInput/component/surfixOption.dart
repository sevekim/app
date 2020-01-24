import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';

import 'package:provider/provider.dart';

class SubmitPagePriceInputSurfixOption extends StatelessWidget {
  const SubmitPagePriceInputSurfixOption({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   GeneralStyle style = GeneralStyle();
    final provider = Provider.of<SubmitPageProvider>(
      context,
      listen: false,
    );

    return Selector<SubmitPageProvider, bool>(
      selector: (buildContext, provider) => provider.priceInputHasValue,
      builder: (_, priceInputHasValue, __) {
        return priceInputHasValue == true
            ? GestureDetector(
                onTap: () => provider.priceInputDelete(),
                child: style.surfixIconButton(icon: Icons.close),
              )
            : style.surfixIconEmptySpace();
      },
    );
  }
}
