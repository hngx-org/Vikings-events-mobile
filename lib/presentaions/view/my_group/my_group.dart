import 'package:event_app/core/constants/enum.dart';
import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/extensions/padding_extension.dart';
import 'package:event_app/presentaions/controllers/group_controller.dart';
import 'package:event_app/presentaions/shared/dubm_widgets/custom_button.dart';
import 'package:event_app/presentaions/view/my_group/widgets/group_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyGroupView extends HookConsumerWidget {
  const MyGroupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final myGroupController = ref.watch(groupControllerProvider);
    useEffect(() {
      myGroupController.getMyGroup();
      return null;
    }, []);

    return Scaffold(
      backgroundColor: EnvColors.applicatioBackgroundColor,
      body: myGroupController.loadingState == LoadingState.loading
          ? const Center(
              child: AppProgressIndicator(
                size: 40,
              ),
            )
          : GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15.h,
                crossAxisSpacing: 13.w,
              ),
              itemCount: myGroupController.groups.length,
              itemBuilder: (context, index) {
                return GroupView(
                  mainText: myGroupController.groups[index].groups?.title ?? '',
                  membersNo: myGroupController.groups[index].memberCount ?? 0,
                  eventsNo: 0,
                  imageStr: myGroupController.groups[index].images != null &&
                          myGroupController.groups[index].images!.isNotEmpty
                      ? myGroupController.groups[index].images![0].url ?? ''
                      : '',
                  hasEvent: false,
                );
              },
            ).paddingSymmetric(horizontal: 16, vertical: 16),
    );
  }
}
