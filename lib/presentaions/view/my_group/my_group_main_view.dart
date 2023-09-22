import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/extensions/padding_extension.dart';
import 'package:event_app/presentaions/view/my_group/group_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyGroupView extends ConsumerWidget {
  const MyGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final myGroupVM = ref.watch(myGroupControllerProvider);
    return Scaffold(
      backgroundColor: EnvColors.applicatioBackgroundColor,
      body: GridView.builder(
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
      ).paddingSymmetric(horizontal: 16, vertical: 16),
    );
  }
}
