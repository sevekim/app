import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package: /widgets/post/submit/style/inputFieldStyle.dart';
import 'package:provider/provider.dart';

import 'component/input.dart';

class SubmitPageLocationInput extends StatelessWidget {
  const SubmitPageLocationInput({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    SubmitPageInputFieldStyle inputStyle = SubmitPageInputFieldStyle();

    final provider = Provider.of<SubmitPageProvider>(
      context,
      listen: false,
    );

    return inputStyle.inputWithPushNav(
      icon: Icons.location_on,
      inputName: 'Location',
      mainOnTapFunction: () async => provider.loadLocationSearch(
        context: context,
      ),
      inputElement: SubmitPageInputFieldDisplay(),
      surfixElement: Selector<SubmitPageProvider, String>(
        selector: (buildContext, provider) => provider.eventLocation.fullName,
        builder: (_, value, __) {
          return value != null
              ? GestureDetector(
                  onTap: () => provider.locationInputDelete(),
                  child: style.surfixIconButton(icon: Icons.close),
                )
              : style.surfixIconEmptySpace();
        },
      ),
    );
  }
}
