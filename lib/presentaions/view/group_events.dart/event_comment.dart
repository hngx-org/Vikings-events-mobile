import 'package:event_app/core/constants/env_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventComment extends ConsumerWidget {
  final bool commentHasImage;
  final String comment;
  final String userName;
  final String imageUrl;
  final String profileImg;

  const EventComment(this.commentHasImage, this.comment, this.userName,
      this.profileImg, this.imageUrl,
      {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 15.h),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Align(
                  widthFactor: 0.5,
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(profileImg),
                    backgroundColor: EnvColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Expanded(
                flex: 10,
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 300.w,
                        padding: EdgeInsets.all(7.sp),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: EnvColors.secondaryTextColor,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userName,
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: EnvColors.primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              comment,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            (commentHasImage)
                                ? Container(
                                    width: 300.w,
                                    height: 250.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(imageUrl),
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1h',
                            style: TextStyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '4',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 15.sp,
                                color: EnvColors.primaryColor,
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
