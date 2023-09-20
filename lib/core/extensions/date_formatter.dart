import 'package:intl/intl.dart';

/// This extension is used to format the DateTime object, to display,
/// to the user a more readable date and also to improve code reusablilty.
/// To use the extension you need to import the file.
/// On any DateTime object of your choice you can add this extension by,
/// converting DateTime.now() to DateTime.now().formatDate.
///
extension DateFormatter on DateTime {
  /// This method formats the [DateTime] object to this date format style.
  /// Aug 3 , 2022
  String formatAsMonthDateYear() {
    return DateFormat.yMMMd().format(this);
  }

  /// This method formats the [DateTime] object to 4
  /// meaining 4 days left
  int calculateDaysLeft() {
    final endingDate = this;
    final currentDay = DateTime.now();
    int daysLeft = endingDate.difference(currentDay).inDays;
    return daysLeft;
  }

  /// This method formats the [DateTime] object to May 25
  String formatAsMonthDate() {
    return DateFormat.MMMd().format(this);
  }

  /// This method formats the [DateTime] object to a day of the week i.e Tuesday

  String formatAsDay() {
    return DateFormat.EEEE().format(this);
  }

  /// This method formats the [DateTime] object to time of the day i.e 12:14 AM

  String formatAsHourMinute() {
    return DateFormat.jm().format(this);
  }

  /// This method formats the [DateTime] object to abbrevated
  /// month of the year i.e Jan
  String get formatAsMonth => DateFormat.LLL().format(this);

  /// This method formats the [DateTime] object to the date of the month. i.e 25
  String get formatAsDateOfMonth => DateFormat.M().format(this);

  /// This method formats the [DateTime] object to the difference instance date,
  /// till DateTime.now() e.g 27.

  int get calculateAge {
    return DateTime.now().year - toUtc().year;
  }

  /// This method formats the [DateTime] object to abbrevate instance as a day
  /// of the week. i,e Tue
  String get abbreviatedDay {
    return DateFormat.E().format(this);
  }
}