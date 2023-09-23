import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/extensions/padding_extension.dart';
import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/presentaions/shared/dubm_widgets/env_appbar.dart';
import 'package:event_app/presentaions/view/my_group/group_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateGroupView extends ConsumerWidget {
  const CreateGroupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: EnvColors.applicatioBackgroundColor,
      appBar: customAppBar(context,
          title: 'My Group', icon: 'people', onPressed: () {}),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Group Title',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: CreateTitle(ref: ref),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 400.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: EnvColors.secondaryTextColor.withOpacity(0.01.sp),
                      borderRadius: BorderRadius.circular(10.sp),
                      border: Border.all(
                        width: 1.w,
                        color: Colors.grey.shade300,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add Group Image',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Poppins',
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          SvgPicture.asset('gallery-import'.svg)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 400.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: EnvColors.primaryColor,
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(
                    width: 1.w,
                    color: Colors.black45,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Done',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ).paddingSymmetric(
        horizontal: 16,
        vertical: 16,
      ),
    );
  }
}
