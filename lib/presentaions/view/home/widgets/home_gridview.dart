import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/constants/env_dimensions.dart';
import 'package:event_app/core/extensions/padding_extension.dart';
import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/presentaions/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicHeightGridView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 8,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        builder: (ctx, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image(
                      image: AssetImage(event[index].image),
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
                            horizontal: 8, vertical: 8),
                        child: const Text(
                          'Sept\n30',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event[index].eventType,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: EnvColors.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      event[index].date,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: EnvColors.primaryColor.shade300),
                    ),
                    const SizedBox(
                      height: EnvDimension.tiny,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset('locationCross'.svg),
                        const SizedBox(
                          width: EnvDimension.tiny,
                        ),
                        Text(
                          event[index].location,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ).paddingAll(10)
              ],
            ),
          );
        });
  }
}
