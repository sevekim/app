import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageDescriptionSurfixOption extends StatelessWidget {
  const SubmitPageDescriptionSurfixOption({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    final provider = Provider.of<SubmitPageProvider>(
      context,
      listen: false,
    );

    return Selector<SubmitPageProvider, bool>(
      selector: (buildContext, provider) => provider.descriptionInputHasValue,
      builder: (_, descriptionInputHasValue, __) {
        return descriptionInputHasValue != null
            ? descriptionInputHasValue == true
                ? GestureDetector(
                    onTap: () => provider.descriptionInputDelete(),
                    child: style.surfixIconButton(
                      icon: Icons.close,
                    ),
                  )
                : provider.descriptionSurfixIconSpace
            : provider.descriptionSurfixIconSpace ?? style.surfixIconEmptySpace();
      },
    );
  }
}
