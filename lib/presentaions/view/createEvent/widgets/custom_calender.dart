import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:intl/intl.dart' show DateFormat;

class CalendarWidget extends StatelessWidget {
  final DateTime initialDate;
  final Function(DateTime) onDateSelected;

  const CalendarWidget({
    super.key,
    required this.initialDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    DateTime currentMonth = initialDate;
    DateTime targetDateTime = initialDate;

    final calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.green,
      onDayPressed: (date, events) {
        onDateSelected(date);
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
      height: 420.0,
      selectedDateTime: initialDate,
      targetDateTime: targetDateTime,
      customGridViewPhysics: const NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
          const CircleBorder(side: BorderSide(color: Colors.yellow)),
      showHeader: false,
      todayTextStyle: const TextStyle(
        color: Colors.blue,
      ),
      markedDateMoreShowTotal: true,
      todayButtonColor: Colors.yellow,
      selectedDayTextStyle: const TextStyle(
        color: Colors.yellow,
      ),
      prevDaysTextStyle: const TextStyle(
        fontSize: 16,
        color: Colors.pinkAccent,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  DateFormat.yMMM().format(currentMonth),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
              TextButton(
                child: const Text('PREV'),
                onPressed: () {
                  currentMonth =
                      DateTime(currentMonth.year, currentMonth.month - 1);
                  targetDateTime =
                      DateTime(targetDateTime.year, targetDateTime.month - 1);
                },
              ),
              TextButton(
                child: const Text('NEXT'),
                onPressed: () {
                  currentMonth =
                      DateTime(currentMonth.year, currentMonth.month + 1);
                  targetDateTime =
                      DateTime(targetDateTime.year, targetDateTime.month + 1);
                },
              )
            ],
          ),
        ),
        Container(
          height: 300,
          width: 300,
          child: calendarCarouselNoHeader,
        ),
      ],
    );
  }
}
