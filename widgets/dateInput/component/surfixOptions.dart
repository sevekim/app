import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageDateSurfixOption extends StatelessWidget {
  const SubmitPageDateSurfixOption({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    final provider = Provider.of<SubmitPageProvider>(
      context,
      listen: false,
    );
    return Selector<SubmitPageProvider, String>(
      selector: (buildContext, provider) => provider.dateTimeDisplay,
      builder: (_, dateTimeDisplay, __) {
        return dateTimeDisplay == null
            ? style.surfixIconButton(icon: Icons.chevron_right)
            : GestureDetector(
                onTap: () => provider.timeInputDelete(),
                child: style.surfixIconButton(icon: Icons.close),
              );
      },
    );
  }
}
