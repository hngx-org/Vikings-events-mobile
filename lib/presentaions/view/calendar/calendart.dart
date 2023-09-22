import 'package:flutter/material.dart';

import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:intl/intl.dart' show DateFormat;

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override

  // ignore: library_private_types_in_public_api
  _Calendar createState() => _Calendar();
}

class _Calendar extends State<Calender> {
  // final DateTime _currentDate = DateTime(2023, 09, 22);
  DateTime _currentDate2 = DateTime(2023, 09, 22);
  String _currentMonth = DateFormat.yMMM().format(DateTime(2023, 09, 22));
  DateTime _targetDateTime = DateTime(2023, 09, 22);

  @override
  Widget build(BuildContext context) {
    final calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.green,
      onDayPressed: (date, events) {
        setState(() => _currentDate2 = date);
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
      height: 420.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
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

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 30.0,
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                _currentMonth,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              )),
              TextButton(
                child: const Text('PREV'),
                onPressed: () {
                  setState(() {
                    _targetDateTime = DateTime(
                        _targetDateTime.year, _targetDateTime.month - 1);
                    _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                  });
                },
              ),
              TextButton(
                child: const Text('NEXT'),
                onPressed: () {
                  setState(() {
                    _targetDateTime = DateTime(
                        _targetDateTime.year, _targetDateTime.month + 1);
                    _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                  });
                },
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          child: calendarCarouselNoHeader,
        ), //
      ],
    ));
  }
}
