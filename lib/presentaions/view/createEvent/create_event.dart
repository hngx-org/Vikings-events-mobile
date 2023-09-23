import 'package:event_app/core/extensions/num_extension.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_event_date.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_event_time.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_sub_hearder.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import 'package:event_app/core/constants/env_colors.dart';

class CreateEventScreen extends StatelessWidget {
  CreateEventScreen({super.key});

  final TextEditingController eventTitleController = TextEditingController();
  final TextEditingController eventDescriptionController =
      TextEditingController();
  final TextEditingController eventLocationController = TextEditingController();
  final TextEditingController eventSelectGroupController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double textFieldHeight = 45;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: EnvColors.primaryColor,
            size: 20,
          ),
          title: const Text(
            'Create Event',
            style: TextStyle(
              color: EnvColors.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              5.hi,
              const CustomSubHeader(theText: 'Event title'),
              8.hi,
              CustomTextField(
                theHeight: textFieldHeight,
                theHintText: 'Boat Cruise',
                evController: eventTitleController,
                theInputType: TextInputType.text,
              ),
              20.hi,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomEventDate(
                    theDay: 01,
                    theMonth: 10,
                    theYear: 23,
                    timeText: 'start',
                  ),
                  CustomEventDate(
                    theDay: 01,
                    theMonth: 10,
                    theYear: 23,
                    timeText: 'end',
                  ),
                ],
              ),
              20.hi,
              Row(
                children: [
                  const CustomEventTime(
                      timeText: 'Start',
                      theHour: '7',
                      theMinute: '00',
                      thePeriod: 'AM'),
                  20.wi,
                  const CustomEventTime(
                      timeText: 'End',
                      theHour: '7',
                      theMinute: '00',
                      thePeriod: 'AM'),
                ],
              ),
              20.hi,
              const CustomSubHeader(theText: 'Event Description'),
              10.hi,
              CustomTextField(
                theMaxLines: 5,
                evController: eventDescriptionController,
                theInputType: TextInputType.multiline,
              ),
              20.hi,
              const CustomSubHeader(theText: 'Location'),
              10.hi,
              CustomTextField(
                  theHeight: textFieldHeight,
                  theHintText: 'Burger King, City Center',
                  theprefix: const Icon(Icons.location_on_rounded),
                  evController: eventLocationController,
                  theInputType: TextInputType.text),
              15.hi,
              CustomTextField(
                theHeight: textFieldHeight,
                evController: eventSelectGroupController,
                theInputType: TextInputType.text,
                thesufix: const Icon(Icons.keyboard_arrow_down_rounded),
                theprefix: const Icon(Icons.people),
                theHintText: 'Select groups',
              ),
              15.hi,
              Container(
                  height: textFieldHeight,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Add an image',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      10.wi,
                      const Icon(Icons.image),
                    ],
                  )),
              30.hi,
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: EnvColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Done',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
