import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageLocationSurfixOption extends StatelessWidget {
  const SubmitPageLocationSurfixOption({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    final provider = Provider.of<SubmitPageProvider>(
      context,
      listen: false,
    );
    return Selector<SubmitPageProvider, String>(
      selector: (buildContext, provider) => provider.eventLocation.fullName,
      builder: (_, address, __) {
        return address == null
            ? style.surfixIconEmptySpace()
            : GestureDetector(
                onTap: () => provider.locationInputDelete(),
                child: style.surfixIconButton(icon: Icons.close),
              );
      },
    );
  }
}
