import 'package:flutter/material.dart';
import 'package: /style/inputStyle.dart';
import 'package: /widgets/post/submit/service/submitPageProvider.dart';
import 'package:provider/provider.dart';

class SubmitPageDescriptionInputField extends StatelessWidget {
  const SubmitPageDescriptionInputField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    final provider = Provider.of<SubmitPageProvider>(
      context,
      listen: false,
    );
    return TextField(
      autofocus: false,
      controller: provider.descriptionController,
      textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      minLines: 3,
      style: style.textStyleInput(),
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Add description',
        hintStyle: style.textStyleInput(),
      ),
      onChanged: (input) => provider.descriptionInputCheck(),
    );
  }
}
