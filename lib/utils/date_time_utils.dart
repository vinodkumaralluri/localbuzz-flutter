import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:proshaala_parentapp/models/students/student_home_schedule.dart';

class DateTimeUtils {
  static String getDashedDate(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

  static String getWeekDayName(DateTime _dateTime) {
    return DateFormat('EEEE').format(_dateTime);
  }

  static String getMonthName(DateTime _dateTime) {
    return DateFormat('LLLL').format(_dateTime);
  }

  static num getWeekNumber(DateTime dateTime) {
    var dayOfYear = num.parse(DateFormat('D').format(dateTime));
    return ((dayOfYear - dateTime.weekday + 10) / 7).floor();
  }

  static String dateTime(num timeStamp) {
    var dateTimeString = DateTime.fromMillisecondsSinceEpoch(timeStamp)
        .toLocal()
        .toString()
        .substring(0, 19);
    return dateTimeString;
  }

  static String twelveHourFormatTime(String twentyFourFormatString) {
    var _currentDate = DateTime.now();
    return DateFormat.jm().format(
      DateTime(
          _currentDate.year,
          _currentDate.month,
          _currentDate.day,
          num.parse(twentyFourFormatString.substring(0, 2)),
          num.parse(twentyFourFormatString.substring(3, 5))),
    );
  }

  static bool isToday(DateTime day) {
    var _now = DateTime.now();
    return day.year == _now.year &&
        day.month == _now.month &&
        day.day == _now.day;
  }

  static bool isYesterday(DateTime day) {
    var _yesterday = DateTime.now().subtract(Duration(hours: 24));
    return day.year == _yesterday.year &&
        day.month == _yesterday.month &&
        day.day == _yesterday.day;
  }

  static bool isTommorow(DateTime day) {
    var _tommorrow = DateTime.now().add(Duration(hours: 24));
    return day.year == _tommorrow.year &&
        day.month == _tommorrow.month &&
        day.day == _tommorrow.day;
  }
}
