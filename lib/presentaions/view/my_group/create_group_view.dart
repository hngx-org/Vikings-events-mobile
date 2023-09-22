import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/constants/env_dimensions.dart';
import 'package:event_app/presentaions/view/my_group/group_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateGroupView extends ConsumerWidget {
  const CreateGroupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: EnvColors.applicatioBackgroundColor,
      appBar: AppBar(
        backgroundColor: EnvColors.applicatioBackgroundColor,
        title: Text(
          'Create Group',
          style: TextStyle(
            fontSize: EnvDimension.medium.sp + 2,
            fontWeight: FontWeight.w600,
            color: EnvColors.primaryColor.shade700,
            fontFamily: 'Poppins',
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: EnvDimension.medium.sp),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.people_outline,
                size: EnvDimension.big.sp,
                color: EnvColors.primaryColor.shade700,
              ),
            ),
          )
        ],
        elevation: 0.4.h,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
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
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: EnvColors.secondaryTextColor.withOpacity(0.1.sp),
                        borderRadius: BorderRadius.circular(10.sp),
                        border: Border.all(
                          width: 1.w,
                          color: Colors.black45,
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
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            Icon(
                              Icons.add_a_photo_outlined,
                              size: 23.sp,
                              color: EnvColors.primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Container(
                  width: 400.w,
                  height: 55.h,
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
        ),
      ),
    );
  }
}
