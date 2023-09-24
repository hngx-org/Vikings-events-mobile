import 'package:event_app/core/extensions/num_extension.dart';
import 'package:event_app/core/extensions/padding_extension.dart';
import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_event_date.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_event_time.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_sub_hearder.dart';
import 'package:event_app/presentaions/view/createEvent/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import 'package:event_app/core/constants/env_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateEventScreen extends StatefulWidget {
  const CreateEventScreen({super.key});

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  final TextEditingController eventTitleController = TextEditingController();

  final TextEditingController eventDescriptionController =
      TextEditingController();

  final TextEditingController eventLocationController = TextEditingController();

  final TextEditingController eventSelectGroupController =
      TextEditingController();

  @override
  void dispose() {
    eventTitleController.dispose();
    eventDescriptionController.dispose();
    eventSelectGroupController.dispose();
    eventLocationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double textFieldHeight = 45;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: EnvColors.primaryColor,
              size: 20,
            ),
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
                theMaxLines: 4,
                evController: eventDescriptionController,
                theInputType: TextInputType.multiline,
              ),
              20.hi,
              const CustomSubHeader(theText: 'Location'),
              10.hi,
              CustomTextField(
                  theHeight: textFieldHeight,
                  theHintText: 'Burger King, City Center',
                  theprefix: SvgPicture.asset(
                    'locationCross'.svg,
                  ).paddingAll(10),
                  evController: eventLocationController,
                  theInputType: TextInputType.text),
              15.hi,
              CustomTextField(
                theHeight: textFieldHeight,
                evController: eventSelectGroupController,
                theInputType: TextInputType.text,
                thesufix: const Icon(Icons.keyboard_arrow_down_rounded),
                theprefix: SvgPicture.asset(
                  'people'.svg,
                ).paddingAll(10),
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
                      SvgPicture.asset('gallery-import'.svg),
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
