import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageTitleInputTextField extends StatelessWidget {
  const SubmitPageTitleInputTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    final provider = Provider.of<SubmitPageProvider>(
      context,
      listen: false,
    );

    return Expanded(
      child: TextField(
        controller: provider.titleController,
        textCapitalization: TextCapitalization.sentences,
        style: style.textStyleHeader(),    
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Title',
        ),
        onChanged: (input) => provider.titleInputCheck(
          type: 'onChange',
        ),
      ),
    );
  }
}
