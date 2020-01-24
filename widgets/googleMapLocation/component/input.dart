import 'package:flutter/material.dart';
import 'package:/style/inputStyle.dart';
import 'package:/widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageInputFieldDisplay extends StatelessWidget {
  const SubmitPageInputFieldDisplay({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    return Selector<SubmitPageProvider, String>(
      selector: (buildContext, provider) => provider.eventLocation.displayName,
      builder: (_, address, __) {
        return address != null
            ? style.dateDisplay(address)
            : style.dateDisplay('Enter location');
      },
    );
  }
}
