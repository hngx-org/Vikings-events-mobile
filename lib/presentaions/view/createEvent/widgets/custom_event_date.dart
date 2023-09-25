import 'package:event_app/core/constants/constants.dart';
import 'package:event_app/core/extensions/num_extension.dart';
import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/presentaions/view/calendar/calendart.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_calender.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_sub_hearder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomEventDate extends StatefulWidget {
  const CustomEventDate({
    Key? key,
    required this.timeText,
    required this.theDay,
    required this.theMonth,
    required this.theYear,
  }) : super(key: key);
  final String timeText;
  final int theDay;
  final int theMonth;
  final int theYear;

  @override
  State<CustomEventDate> createState() => _CustomEventDateState();
}

class _CustomEventDateState extends State<CustomEventDate> {
  DateTime? theDateData;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSubHeader(theText: 'Event ${widget.timeText} date'),
        8.hi,
        GestureDetector(
          onTap: () {
            _showCalendarDialog(context);
          },
          child: Container(
            height: 45,
            width: 140,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  theDateData == null
                      ? '${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}'
                      : '${theDateData?.day}/${theDateData?.month}/${theDateData?.year}',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                SvgPicture.asset(
                  'calendar'.svg,
                  height: 18,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  void _showCalendarDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select a Date'),
          content: SizedBox(
            height: 350,
            child: CalendarWidget(
              initialDate: DateTime.now(),
              onDateSelected: (selectedDate) {
                setState(() {
                  theDateData = selectedDate;
                });
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
