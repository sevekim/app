import 'package:flutter/material.dart';
import 'package: ../style/inputStyle.dart';
import 'package: ../style/styleConstant.dart';

class PostSubHeaderLocation extends StatelessWidget {
  final String placeholder;
  final IconData iconType;
  const PostSubHeaderLocation({
    Key key,
    this.placeholder,
    this.iconType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GeneralStyle style = GeneralStyle();
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            right: smallSize,
          ),
          child: Icon(
            iconType,
            color: Colors.grey[400],
          ),
        ),
        Expanded(
          child: Text(
            placeholder,
            overflow: TextOverflow.ellipsis,
            style: style.textStyleInput(),
          ),
        ),
      ],
    );
  }
}
