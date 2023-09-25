import 'dart:math';

import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/constants/env_dimensions.dart';
import 'package:event_app/core/extensions/padding_extension.dart';
import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/presentaions/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  List events = [];
  List defaultImages = [
    "https://res.cloudinary.com/hack-light/image/upload/v1695602177/istockphoto-1409304190-612x612_seitaf.jpg",
    "https://res.cloudinary.com/hack-light/image/upload/v1695602177/istockphoto-1348886734-612x612_jxrzuq.jpg",
    "https://res.cloudinary.com/hack-light/image/upload/v1695602177/istockphoto-1385660042-612x612_lukr2u.jpg",
    "https://res.cloudinary.com/hack-light/image/upload/v1695602177/istockphoto-1014903134-612x612_i9gnp5.jpg",
    "https://res.cloudinary.com/hack-light/image/upload/v1695602177/istockphoto-1314546341-612x612_xtbm7k.jpg",
    "https://res.cloudinary.com/hack-light/image/upload/v1695602177/istockphoto-1297171607-612x612_qkezxh.jpg",
    "https://res.cloudinary.com/hack-light/image/upload/v1695602177/istockphoto-1071805892-612x612_n5iyvj.jpg",
    "https://res.cloudinary.com/hack-light/image/upload/v1695602176/istockphoto-995353918-612x612_ne9uzh.jpg",
    "https://res.cloudinary.com/hack-light/image/upload/v1695602176/istockphoto-683737016-612x612_ohhyux.jpg",
    "https://res.cloudinary.com/hack-light/image/upload/v1695602550/qw_nfhxda.jpg"
  ];

  @override
  void initState() {
    super.initState();
    loadEvents();
  }

  Future<void> loadEvents() async {
    events = await fetchEvents();
    setState(() {});
  }

  void duplicate() {
    int desiredLength = 20;

    List<String> duplicatedList = [];

    for (int i = 0; i < desiredLength; i++) {
      duplicatedList.add(defaultImages[i % defaultImages.length]);
    }

    setState(() {
      defaultImages = duplicatedList;
    });
  }

  String formatDate(inputDate) {
    if (inputDate != null) {
      // Parse the input date string
      final parsedDate = DateTime.parse(inputDate);

      // Format the date as "MMM d"
      final formattedDate = DateFormat.MMMd().format(parsedDate);
      List dateFormat = formattedDate.split(" ");

      return "${dateFormat[0]} \n${dateFormat[1]}";
    } else {
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return events.length <= 0
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            margin: const EdgeInsets.only(bottom: 40),
            child: DynamicHeightGridView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: events.length,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                builder: (ctx, index) {
                  if (index < events.length) {
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
                                image: events[index]?["image"] != null
                                    ? NetworkImage(
                                        (events[index]?['image']).toString(),
                                      )
                                    : NetworkImage(
                                        defaultImages[Random()
                                            .nextInt(defaultImages.length)],
                                      ),
                                height: 150,
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
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 8),
                                  child: Text(
                                    formatDate(events[index]?['end_date']),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
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
                                events[index]?["title"],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: EnvColors.primaryColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Text(
                                "Monday 4 - 6 PM",
                                // events[index].date
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: EnvColors.primaryColor.shade300),
                              ),
                              const SizedBox(
                                height: EnvDimension.tiny,
                              ),
                              // Row(
                              //   crossAxisAlignment: CrossAxisAlignment.end,
                              //   children: [
                              //     SvgPicture.asset('locationCross'.svg),
                              //     const SizedBox(
                              //       width: EnvDimension.tiny,
                              //     ),
                              //     Text(

                              //       events[index]?["location"],
                              //       softWrap: true, // Enable text wrapping
                              //       maxLines: 2,
                              //       overflow: TextOverflow.ellipsis,
                              //       style: Theme.of(context)
                              //           .textTheme
                              //           .bodySmall!
                              //           .copyWith(
                              //             fontSize: 14,
                              //             fontWeight: FontWeight.w400,
                              //             color: Colors.black,
                              //           ),
                              //     ),
                              //   ],
                              // )
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset('locationCross'.svg),
                                  const SizedBox(
                                    width: EnvDimension.tiny,
                                  ),
                                  Flexible(
                                    child: Text(
                                      events[index]?["location"],
                                      softWrap: true, // Enable text wrapping
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ).paddingAll(10)
                        ],
                      ),
                    );
                  } else {
                    return Container();
                  }
                }),
          );
  }
}
