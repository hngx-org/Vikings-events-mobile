import 'package:event_app/core/constants/env_dimensions.dart';
import 'package:flutter/material.dart';

class NoCommentWidget extends StatelessWidget {
  const NoCommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Icon(Icons.chat_bubble_outline_outlined,
            color: Color(0xff9C9C9C)
            ),
            const SizedBox(
              width: EnvDimension.xSmall,
            ),
            GestureDetector(
                onTap: (){
                  print('tapped');
                },
                child: const SizedBox(
                  width: 325,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Leave a comment',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Color(0xff9C9C9C)
                        ),),
                      Icon(Icons.arrow_forward_ios_rounded,
                        color: Color(0xff9C9C9C),)
                    ],
                  ),
                )
            )
          ],
        ),
      ],
    );
  }
}
