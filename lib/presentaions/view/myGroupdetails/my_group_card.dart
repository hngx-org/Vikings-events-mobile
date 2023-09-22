import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/constants/env_dimensions.dart';
import 'package:flutter/material.dart';

class MyGroupCard extends StatefulWidget {

  // final String text;
  final String image;
  final String venue;
  final String date;
  final String dayAndTime;
  final String location;

  const MyGroupCard({super.key,
    // required this.text,
    required this.image,
    required this.venue,
    required this.date,
    required this.dayAndTime,
    required this.location

  });

  @override
  State<MyGroupCard> createState() => _MyGroupCardState();
}

class _MyGroupCardState extends State<MyGroupCard> {

  final List networkImages = [
    'https://wallpapers.com/images/featured/cool-profile-picture-87h46gcobjl5e4xu.webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUv0XZFmQk2wp5UTvVlqx6qq3wOkgSEx9WcVaSaO5YIg&s',
    'https://e1.pxfuel.com/desktop-wallpaper/534/172/desktop-wallpaper-stylish-people-to-follow-on-instagram-instagram-girl-profile-pic.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 130,
              width: 380,
              // color: Colors.blue,
              decoration: BoxDecoration(
                color: const Color(0xffFDFDFD),
                border: Border.all(
                  color: const Color(0xffF0F0F0)
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 150,
                    child: Image.asset(widget.image,
                    fit: BoxFit.contain,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.venue,
                        style: const TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w600,
                          color: EnvColors.primaryColor,
                          fontFamily: 'Poppins'
                        ),),
                        Text(widget.date,
                        style: const TextStyle(
                          fontSize: 19.0,
                          fontFamily: 'Poppins',
                          color: Colors.black
                        ),),
                        Text(widget.dayAndTime,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8F9bb3),
                          fontFamily: 'Poppins'
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.location_on_outlined),
                            Text(widget.location,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 19,
                              fontWeight: FontWeight.w400
                            ),),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        SizedBox(
          height: 40,
          width: 380,

          child: TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                disabledForegroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                side: BorderSide(
                  color: EnvColors.primaryColor,

                )
              ),
              child: Text(
                  'I will join',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16
                ),
              )
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: EnvDimension.small,
                right: EnvDimension.small,
                top: EnvDimension.xSmall,
                // bottom: EnvDimension.xSmall
              ),
              child: Divider(
                thickness: 1,
                height: 10,
                color: EnvColors.primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: EnvDimension.big,
                // bottom: EnvDimension.xSmall
              ),
              child: Row(
                children: [
                  //Widget for Groups with Comment,
                  //Check lib/ui/views/model
                  Row(
                    children: [
                      for( int i = 0; i < networkImages.length; i++)
                        Align(
                          widthFactor: 0.5,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundImage: NetworkImage(networkImages[i]),
                              // commentImages[i]
                          ),
                        ),
                      SizedBox(
                        width: EnvDimension.xSmall,
                      ),

                      GestureDetector(
                          onTap: (){
                            print('tapped');
                          },
                          child: Container(
                            width: 325,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('10 Comments',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: EnvColors.primaryColor
                                ),),
                                Icon(Icons.arrow_forward_ios_rounded,
                                color: EnvColors.primaryColor,)
                              ],
                            ),
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: EnvDimension.big)
        // Divider(thickness: 1, color: Colors.black, height: 191),
      ],
    );
  }
}

// Widget for No comment in the group
