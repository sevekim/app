import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageTitleInputSurfixOption extends StatelessWidget {
  const SubmitPageTitleInputSurfixOption({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    final provider = Provider.of<SubmitPageProvider>(
      context,
      listen: false,
    );

    return Selector<SubmitPageProvider, bool>(
      selector: (buildContext, provider) => provider.titleInputHasValue,
      builder: (_, titleInputHasValue, __) {
        return titleInputHasValue != null
            ? titleInputHasValue == true
                ? GestureDetector(
                    onTap: () => provider.titleInputDelete(),
                    child: style.surfixIconButton(
                      icon: Icons.close,
                    ),
                  )
                : provider.titleSurfixIconSpace
            : provider.titleSurfixIconSpace ?? style.surfixIconEmptySpace();
      },
    );
  }
}
