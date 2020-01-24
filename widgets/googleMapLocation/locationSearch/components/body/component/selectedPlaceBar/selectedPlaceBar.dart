import 'package:flutter/material.dart';
import 'package: /widgets/post/submit/component/input/locationInput/service/mapProvider.dart';
import 'package:provider/provider.dart';

import 'structure.dart';

class SubmitPageLocationResultDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PlaceSearchProvider provider = Provider.of<PlaceSearchProvider>(
      context,
      listen: false,
    );

    return GestureDetector(
      child: SelectPlaceAction(),
      onTap: () {
        provider.returnSelectedLocationData(
          context: context,
        );
      },
    );
  }
}
