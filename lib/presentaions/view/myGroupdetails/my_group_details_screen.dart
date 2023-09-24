import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/presentaions/view/myGroupdetails/group_card_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyGroupDetailsScreen extends ConsumerWidget {
  MyGroupDetailsScreen({Key? key}) : super(key: key);
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          elevation: 1,
          leading: const Icon(
            Icons.arrow_back_ios_rounded,
            color: EnvColors.primaryColor,
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 90.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      'Sisturzz!',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins-SemiBold',
                          color: Color(0xff28289F)),
                    ),
                    Text(
                      '4 members',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 12.0),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 24.0,
                  child: ClipRRect(
                    child: Image.asset('assets/pngs/grouppicture.png'),
                  ),
                )
              ],
            ),
          )),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                key: listKey,
                itemCount: groupCardList.length,
                itemBuilder: (context, index) {
                  return groupCardList[index];
                }),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
