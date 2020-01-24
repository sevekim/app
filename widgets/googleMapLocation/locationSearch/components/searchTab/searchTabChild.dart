import 'package:flutter/material.dart';

import 'component/appbar/appbar.dart';
import 'component/body/body.dart';

class SubmitPageLocationSearchTabScaffold extends StatelessWidget {
  const SubmitPageLocationSearchTabScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: SubmitPageLocationSearchTabAppBar(),
      body: SubmitPageLocationSearchTabBody(),
    );
  }
}
