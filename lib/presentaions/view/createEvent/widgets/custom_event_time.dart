import 'package:event_app/core/extensions/num_extension.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_sub_hearder.dart';
import 'package:flutter/material.dart';

class CustomEventTime extends StatelessWidget {
  const CustomEventTime({
    Key? key,
    required this.timeText,
    required this.theHour,
    required this.theMinute,
    required this.thePeriod,
  }) : super(key: key);
  final String timeText;
  final String theHour;
  final String theMinute;
  final String thePeriod;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSubHeader(theText: '$timeText Time'),
        8.hi,
        Container(
          height: 45,
          width: 110,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade300)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$theHour:$theMinute $thePeriod',
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                size: 18,
              )
            ],
          ),
        )
      ],
    );
  }
}
