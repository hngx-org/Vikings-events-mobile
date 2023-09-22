import 'package:event_app/core/constants/env_dimensions.dart';
import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/presentaions/view/home/home_gridview.dart';
import 'package:event_app/presentaions/view/home/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/env_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/profile1.png'),
                      const SizedBox(
                        width: EnvDimension.medium,
                      ),
                      Text(
                        'Hello, Tam!',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              height: 1.2,
                              color: EnvColors.primaryColor,
                            ),
                      ),
                    ],
                  ),
                  SvgPicture.asset('notification'.svg),
                ],
              ),
              const SizedBox(
                height: EnvDimension.big,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.search),
                  const EventTab(),
                  SvgPicture.asset('filter'.svg)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Happeing Now',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey.shade300),
                    color: Colors.white),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Movie Night',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2,
                                  color: EnvColors.primaryColor,
                                ),
                          ),
                          const SizedBox(
                            height: EnvDimension.xxSmall,
                          ),
                          const Text(
                            'Sept 18, 2023',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Sunday 4 - 6 PM',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2,
                                    color: EnvColors.primaryColor.shade300),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('locationCross'.svg),
                              const SizedBox(width: EnvDimension.xxSmall),
                              Text(
                                'Odeon Cinema',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2,
                                        color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          const Icon(Icons.more_horiz),
                          const Spacer(),
                          SvgPicture.asset('live'.svg),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Upcoming events',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              const Grid(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // create route to create an event
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
