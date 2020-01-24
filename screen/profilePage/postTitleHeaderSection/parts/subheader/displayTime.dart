import 'package:flutter/material.dart';
import 'package: ../model/event.dart';
import 'package: ../utilities/dateTimeDisplay.dart';
import 'package: ../widgets/post/submit/component/preview/component/widget/subHeaderWithIcon.dart';

class PostTitleSubHeaderTimeDisplay extends StatelessWidget {
  final Post post;
  const PostTitleSubHeaderTimeDisplay({
    Key key,
    this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String timeDisplay = DateAndTimeDisplay.dateAndTimeDisplay(
      eventTime: post.eventTimeTotal,
    );

    return timeDisplay != null
        ? PostSubHeaderWidgetWithIcon(
            placeholder: timeDisplay,
            iconType: Icons.event,
          )
        : PostSubHeaderWidgetWithIcon(
            placeholder: 'Anytime',
            iconType: Icons.event,
          );
  }
}
