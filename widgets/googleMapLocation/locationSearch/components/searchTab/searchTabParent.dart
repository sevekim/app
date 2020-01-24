import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/searchTabProvider.dart';
import 'package:provider/provider.dart';

import 'searchTabChild.dart';

class SubmitPageLocationSearchTab extends StatelessWidget {
  const SubmitPageLocationSearchTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LocationSearchTab>(
          create: (context) => LocationSearchTab(),
        ),
      ],
      child: SubmitPageLocationSearchTabScaffold(),
    );
  }
}
