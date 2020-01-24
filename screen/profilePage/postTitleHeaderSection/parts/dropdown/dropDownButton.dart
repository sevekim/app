import 'package:flutter/material.dart';
import 'package: ../model/event.dart';
import 'package: ../screen/pages/routes/profilePage/service/profileProvider.dart';
import 'package: ../widgets/post/service/postService.dart';
import 'package:provider/provider.dart';

import 'dropDownOptions.dart';

class PostDropDownButton extends StatelessWidget {
  final Post post;
  final int index;
  const PostDropDownButton({
    Key key,
    this.post,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic provider;

    //Check that it is in the profile page
    provider = Provider.of<ProfilePageProvider>(
      context,
      listen: false,
    );

    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        icon: Icon(Icons.more_vert),
        onChanged: (String value) {
          PostService().dropDownButtonAction(
            value: value,
            context: context,
            post: post,
            provider: provider,
            index: index,
          );
        },
        items: DropDownMenuItems.itemsBasedOnAuth(post),
      ),
    );
  }
}
