import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/constants/env_dimensions.dart';
import 'package:event_app/core/extensions/padding_extension.dart';
import 'package:event_app/presentaions/controllers/my_group_controller.dart';
import 'package:event_app/presentaions/view/myGroupdetails/my_group_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupView extends StatelessWidget {
  final String mainText;
  final int membersNo;
  final int? eventsNo;
  final String imageStr;
  final bool hasEvent;

  const GroupView({
    Key? key,
    required this.mainText,
    required this.membersNo,
    this.eventsNo,
    required this.imageStr,
    required this.hasEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyGroupDetailsScreen(),
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: Colors.grey.shade300,
              strokeAlign: BorderSide.strokeAlignCenter,
              width: 1.sp,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      imageStr,
                      fit: BoxFit.cover,
                    ),
                    //implement logic for image from api
                    hasEvent
                        ? Positioned(
                            bottom: 0,
                            right: 0,
                            child: Badge(
                              backgroundColor: Colors.transparent,
                              largeSize: EnvDimension.big.h,
                              label: Container(
                                height: 20.sp,
                                width: 60.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.sp),
                                  color: EnvColors.secondaryColor.shade300,
                                ),
                                child: Center(
                                  child: Text(
                                    '$eventsNo Events',
                                    style: TextStyle(
                                      fontSize: 9.sp,
                                      wordSpacing: 0.5.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mainText,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      '$membersNo Members',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        color: EnvColors.primaryColor.shade300,
                      ),
                    ),
                  ],
                ).paddingSymmetric(
                  horizontal: 5.w,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final groupViewList = <Widget>[
  const GroupView(
    mainText: 'Sisturrz',
    membersNo: 3,
    eventsNo: 3,
    imageStr: 'assets/images/sistur.jpg',
    hasEvent: true,
  ),
  const GroupView(
    mainText: 'GV Table Tennis',
    membersNo: 15,
    imageStr: 'assets/images/table.jpg',
    hasEvent: false,
  ),
  const GroupView(
    mainText: 'Grit Techies',
    membersNo: 12,
    imageStr: 'assets/images/tech.jpeg',
    hasEvent: false,
  ),
  const GroupView(
    mainText: 'Hike Squad',
    membersNo: 8,
    imageStr: 'assets/images/hike.jpg',
    hasEvent: false,
  ),
];

class CreateTitle extends StatefulWidget {
  final WidgetRef ref;
  const CreateTitle({super.key, required this.ref});

  @override
  State<CreateTitle> createState() => _CreateTitleState();
}

class _CreateTitleState extends State<CreateTitle> {
  final TextEditingController myGoons = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (groupText) {
        String goonName = groupText;
        widget.ref
            .read<MyGroupController>(myGroupControllerProvider)
            .holdGroupName(goonName);
      },
      controller: myGoons,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          filled: true,
          fillColor: EnvColors.secondaryTextColor.withOpacity(0.01.sp),
          hintText: 'My goons',
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.w,
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.w,
              color: EnvColors.primaryColor,
            ),
            borderRadius: BorderRadius.circular(10.sp),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.w,
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(10.sp),
          )),
    );
  }
}
