import 'package:flutter/material.dart';
import 'package: ../style/inputStyle.dart';
import 'package: ../style/styleConstant.dart';

class PostParts {
  GeneralStyle style = GeneralStyle();

  Container postDescriptionPart({
    String placeholder,
    double bottomPadding = doubleExtraLargeSize,
  }) {
    return style.detailMainPaddingContainerLRB(
      bottomPadding: bottomPadding,
      child: style.inputParagraph(placeholder),
    );
  }
}
