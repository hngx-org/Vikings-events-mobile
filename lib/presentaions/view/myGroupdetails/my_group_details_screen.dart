import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/presentaions/view/myGroupdetails/my_group_card.dart';
import 'package:flutter/material.dart';


class MyGroupDetailsScreen extends StatefulWidget {
  const MyGroupDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MyGroupDetailsScreen> createState() => _MyGroupDetailsScreenState();
}

class _MyGroupDetailsScreenState extends State<MyGroupDetailsScreen> {

  final List _venue = [
    'Yacht Party',
    'Uju\'s Wedding',
    'Yacht Party'
  ];
  final List _images = [
    'assets/pngs/Themother.png',
    'assets/pngs/flower.png',
    'assets/pngs/thegirl.png'
  ];
  final List _date = [
    'Sept 30, 2023',
    'Oct 10, 2023',
    'Oct 20, 2023'
  ];
  final List _dayAndTime = [
    'Friday 10 - 2 AM',
    'Saturday 10 - 4PM',
    'Friday 2 - 4PM'
  ];
  final List _location = [
    'Ibiza',
    'London',
    'Nottingham'
  ];

  @override
  Widget build(BuildContext context) {
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
                          color: Color(0xff28289F)
                      ),
                    ),
                    Text(
                      '4 members',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0
                      ),
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
          )
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: _venue.length,
                itemBuilder: (context, index) {
                  return MyGroupCard(
                    image: _images[index],
                    venue: _venue[index],
                    date: _date[index],
                    dayAndTime: _dayAndTime[index],
                    location: _location[index],
                    // text: ,
                  );
                }),
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}



