import 'package:event_app/core/constants/env_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget holdEvent() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          height: 130,
          width: 380,
          // color: Colors.blue,
          decoration: BoxDecoration(
              color: const Color(0xffFDFDFD),
              border: Border.all(color: const Color(0xffF0F0F0)),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              SizedBox(
                height: 150,
                child: Image.asset(
                  'assets/pngs/Themother.png',
                  fit: BoxFit.contain,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12.0, top: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Yacht Party',
                      style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w600,
                          color: EnvColors.primaryColor,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      'Sept 30, 2023',
                      style: TextStyle(
                          fontSize: 19.0,
                          fontFamily: 'Poppins',
                          color: Colors.black),
                    ),
                    Text(
                      'Friday 10 - 2 AM',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8F9bb3),
                          fontFamily: 'Poppins'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text(
                          'Ibiza',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 19,
                              fontWeight: FontWeight.w400),
                        ),
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
  );
}

Widget actionButton() {
  return Padding(
    padding: EdgeInsets.only(top: 10.sp),
    child: SizedBox(
      height: 50,
      width: 380,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              disabledForegroundColor: Colors.white,
              shape: const BeveledRectangleBorder(
                side: BorderSide.none,
              ),
              side: BorderSide(
                color: EnvColors.primaryColor.withOpacity(0.5),
              )),
          child: const Text(
            'I will join',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )),
    ),
  );
}
