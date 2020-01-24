import 'package:flutter/material.dart';
import 'package:/style/styleConstant.dart';

//////////////////////////////////////
/// Common Widget style t
//////////////////////////////////////
class GeneralStyle {
   //////////////////////////////////////
  /// Utility
  //////////////////////////////////////

  Container validatorIcon() {
    return surfixIconButton(
      icon: Icons.warning,
      color: Colors.redAccent,
    );
  }

  ///Input field style
  Container surfixIconButton({
    double leftPadding = 0.0,
    double rightPadding = 0.0,
    double topPadding = 0.0,
    double bottomPadding = 0.0,
    Function onTapFunction,
    double size = 22.0,
    IconData icon,
    Color color,
  }) {
    return generalContainer(
      leftPadding: containerInnerPaddingHorizontal,
      rightPadding: containerInnerPaddingHorizontal,
      topPadding: topPadding,
      bottomPadding: bottomPadding,
      child: GestureDetector(
        child: iconPart(
          icon: icon,
          size: size,
          color: color,
        ),
        onTap: onTapFunction,
      ),
    );
  }

  SizedBox surfixIconEmptySpace() {
    return SizedBox(
      width: 34.0,
    );
  }

  TextStyle textStyleHeader() {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20.0,
    );
  }

  TextStyle textStyleTitle() {
    return TextStyle(
      color: Colors.grey[600],
      fontWeight: FontWeight.w500,
      fontSize: 17.0,
    );
  }

  TextStyle textStyleInput() {
    return TextStyle(
      color: Colors.grey[500],
      fontWeight: FontWeight.w600,
      fontSize: 15.0,
    );
  }

  TextStyle textStyleHint() {
    return TextStyle(
      color: Colors.grey[500],
      fontWeight: FontWeight.w600,
      fontSize: 15.0,
    );
  }

  Text appBarTextButtonStyle({String text}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18.0,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Text dateDisplay(String text) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: textStyleInput(),
      textAlign: TextAlign.end,
    );
  }
  ////////////////////////////////
  /// Product Detail page style
  ////////////////////////////////

  TextStyle textStyleLargeTitle() {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 28.0,
      color: Colors.grey[850],
    );
  }

  TextStyle textStyleNormal() {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18.0,
      color: Colors.grey[700],
    );
  }

  Container detailMainPaddingContainerLTRB({
    Widget child,
    double bottomPadding = largeSize + 4.0,
  }) {
    return Container(
      padding: EdgeInsets.only(
        left: largeSize,
        right: largeSize,
        top: largeSize,
        bottom: bottomPadding,
      ),
      child: child,
    );
  }

  Container detailMainPaddingContainerLRB({
    Widget child,
    @required double bottomPadding,
    double horizontal = largeSize,
  }) {
    return Container(
      padding: EdgeInsets.only(
        left: horizontal,
        right: horizontal,
        bottom: bottomPadding,
      ),
      child: child,
    );
  }

  Container sameWHcontainerLRB({
    Widget child,
    double size,
    @required double bottomPadding,
  }) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.only(
        bottom: bottomPadding,
      ),
      child: child,
    );
  }

  Text inputTextField(placeholder) {
    return Text(
      placeholder,
      style: textStyleInput(),
    );
  }

  Text inputPostTitle(placeholder) {
    return Text(
      placeholder,
      style: textStyleLargeTitle(),
    );
  }

  Text inputProfileTitle(placeholder) {
    return Text(
      placeholder,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25.0,
        color: Colors.grey[700],
      ),
    );
  }

  Text inputTextName(placeholder) {
    return Text(
      placeholder,
      style: textStyleNormal(),
    );
  }

  Text inputParagraph(placeholder) {
    return Text(
      placeholder,
      style: textStyleTitle(),
    );
  }

  Container interactionIconButton(IconData icon) {
    return Container(
      padding: EdgeInsets.only(
        right: doubleExtraLargeSize,
      ),
      child: Icon(
        icon,
        color: Colors.black38,
        size: iconMidSize,
      ),
    );
  }
}
