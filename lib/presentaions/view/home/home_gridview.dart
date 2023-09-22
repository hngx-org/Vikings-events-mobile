import 'package:event_app/core/extensions/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/env_colors.dart';
import '../../../core/constants/env_dimensions.dart';
import 'home_model.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        primary: false,
        itemCount: event.length,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5)),
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          topLeft: Radius.circular(5)),
                      child: Image.asset(
                        event[index].image,
                        width: double.infinity,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 12),
                        child: const Text(
                          'Sept\n30',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: EnvDimension.xxxSmall,
                ),
                Text(
                  event[index].eventType,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                      color: EnvColors.primaryColor),
                ),
                const SizedBox(
                  height: EnvDimension.tiny,
                ),
                Text(
                  event[index].date,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                      color: EnvColors.primaryColor.shade300),
                ),
                const SizedBox(
                  height: EnvDimension.tiny,
                ),
                Row(
                  children: [
                    SvgPicture.asset('locationCross'.svg),
                    const SizedBox(
                      width: EnvDimension.tiny,
                    ),
                    Text(
                      event[index].location,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                          color: Colors.black),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
