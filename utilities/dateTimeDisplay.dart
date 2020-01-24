import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class DateAndTimeDisplay {
  //Jun 19, 4:30 PM
  static String dateAndTimeDisplay({
    Timestamp eventTime,
  }) {
    if (eventTime != null) {
      DateTime time = eventTime.toDate();
      String dateDisplay;

      if (time.hour == 0 && time.minute == 0) {
        dateDisplay = DateFormat.MMMd("en_US").format(time);
      } else {
        dateDisplay = DateFormat.MMMd("en_US").add_jm().format(time);
      }

      return dateDisplay;
    }
    return null;
  }

  //Jun 19, 4:30 PM
  static String dateToAGo({
    Timestamp eventTime,
  }) {
    if (eventTime != null) {
      DateTime time = eventTime.toDate();
      String dateDisplay;

      dateDisplay = timeago.format(time);

      return dateDisplay;
    }
    return null;
  }
}
