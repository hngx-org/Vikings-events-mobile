import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/presentaions/view/group_events.dart/event_comment.dart';
import 'package:event_app/presentaions/view/group_events.dart/event_comments_widgets.dart';
import 'package:event_app/presentaions/view/group_events.dart/group_event_widgets.dart';
import 'package:event_app/presentaions/view/my_group/group_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupEvents extends StatelessWidget {
  const GroupEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        elevation: 1.sp,
        title: Text(
          '10 Comments',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w600,
                color: EnvColors.primaryColor,
              ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.sp),
        children: <Widget>[
          Column(
            children: [
              holdEvent(),
              actionButton(),
              // ListView.builder(
              //   itemCount: commentList.length,
              //   itemBuilder: ((context, index) {
              //     return commentList[index];
              //   }),
              // ),
              const EventComment(
                false,
                "We can start pre-party today, i'm ready babies!",
                'Jojo',
                'https://e1.pxfuel.com/desktop-wallpaper/534/172/desktop-wallpaper-stylish-people-to-follow-on-instagram-instagram-girl-profile-pic.jpg',
                'https://e1.pxfuel.com/desktop-wallpaper/534/172/desktop-wallpaper-stylish-people-to-follow-on-instagram-instagram-girl-profile-pic.jpg',
              ),
              const EventComment(
                true,
                "This is how I'm going to be serving lewks!!",
                'Tiara',
                'https://e1.pxfuel.com/desktop-wallpaper/534/172/desktop-wallpaper-stylish-people-to-follow-on-instagram-instagram-girl-profile-pic.jpg',
                'https://e1.pxfuel.com/desktop-wallpaper/534/172/desktop-wallpaper-stylish-people-to-follow-on-instagram-instagram-girl-profile-pic.jpg',
              ),
            ],
          ),
        ],
      ),
      bottomSheet: BottomAppBar(
        shadowColor: Colors.black45,
        elevation: 4.sp,
        height: 50.h,
        color: EnvColors.lightBackgroundColor,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                child: const Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.black54,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(5.sp),
                child: TextFormField(
                  controller: createComment,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.send_rounded,
                    ),
                    filled: true,
                    fillColor:
                        EnvColors.secondaryTextColor.withOpacity(0.01.sp),
                    hintText: 'Type a message',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.w,
                        color: Colors.grey.shade300,
                      ),
                      borderRadius: BorderRadius.circular(23.r),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.w,
                        color: EnvColors.primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(23.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.w,
                        color: EnvColors.primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(23.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.w,
                        color: Colors.grey.shade300,
                      ),
                      borderRadius: BorderRadius.circular(23.r),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                child: const Icon(
                  Icons.mic_none_rounded,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
