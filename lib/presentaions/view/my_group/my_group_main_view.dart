import 'package:event_app/presentaions/controllers/my_group_controller.dart';
import 'package:event_app/presentaions/view/my_group/group_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/constants/env_dimensions.dart';

class MyGroupView extends ConsumerWidget {
  const MyGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final myGroupVM = ref.watch(myGroupControllerProvider);
    return Scaffold(
      backgroundColor: EnvColors.applicatioBackgroundColor,
      appBar: AppBar(
        //to remove the custom back button from the navigation class
        automaticallyImplyLeading: false,
        backgroundColor: EnvColors.applicatioBackgroundColor,
        title: Text(
          'My Groups',
          style: TextStyle(
            fontSize: EnvDimension.medium.sp + 2,
            fontWeight: FontWeight.w600,
            color: EnvColors.primaryColor.shade700,
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: EnvDimension.medium.sp),
            child: GestureDetector(
              onTap: () {
                ref
                    .read<MyGroupController>(myGroupControllerProvider)
                    .createGroup(context);
              },
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
          padding: EdgeInsets.all(10.sp),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 13.w,
            ),
            itemCount: groupViewList.length,
            itemBuilder: (context, index) {
              return groupViewList[index];
            },
          )),
    );
  }
}
