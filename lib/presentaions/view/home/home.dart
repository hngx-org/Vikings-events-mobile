import 'package:event_app/core/constants/env_dimensions.dart';
import 'package:event_app/core/extensions/num_extension.dart';
import 'package:event_app/core/extensions/padding_extension.dart';
import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/presentaions/view/createEvent/create_event.dart';
import 'package:event_app/presentaions/view/home/widgets/home_gridview.dart';
import 'package:event_app/presentaions/view/home/widgets/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/env_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.hi,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('search'.svg),
                const EventTab(),
                SvgPicture.asset('filter'.svg).paddingOnly(
                  left: 10,
                )
              ],
            ),
            20.hi,
            Text(
              'Happeing Now',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                  ),
            ),
            10.hi,
            const HappingNowCard(),
            28.hi,
            Text(
              'Upcoming events',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Grid(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: EnvColors.primaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateEventScreen(),
                
              ));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
    ).paddingSymmetric(horizontal: 16);
  }
}

class HappingNowCard extends StatelessWidget {
  const HappingNowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade300),
      ),
      height: 136,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset('assets/images/themother.png'),
          const SizedBox(
            width: EnvDimension.xxSmall,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 5, top: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Movie Night',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: EnvColors.primaryColor,
                      ),
                ),
                Text(
                  'Sept 18, 2023',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                      ),
                ),
                Text(
                  'Sunday 4 - 6 PM',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: EnvColors.primaryColor.shade300,
                      ),
                ),
                Row(
                  children: [
                    SvgPicture.asset('locationCross'.svg),
                    const SizedBox(width: EnvDimension.xxSmall),
                    Text(
                      'Odeon Cinema',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          const Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.more_horiz,
            ),
          ).paddingOnly(
            right: 4,
          ),
        ],
      ),
    );
  }
}
