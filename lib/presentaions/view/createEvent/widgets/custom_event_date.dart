import 'package:event_app/core/extensions/num_extension.dart';
import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_sub_hearder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomEventDate extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSubHeader(theText: 'Event $timeText date'),
        8.hi,
        Container(
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
                '$theDay/$theMonth/$theYear',
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
        )
      ],
    );
  }
}
