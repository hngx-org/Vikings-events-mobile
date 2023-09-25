import 'package:event_app/core/constants/env_colors.dart';
import 'package:event_app/core/extensions/num_extension.dart';
import 'package:event_app/core/extensions/padding_extension.dart';
import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/presentaions/controllers/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

PreferredSize customAppBar(
  BuildContext context, {
  bool hasBackButton = false,
  bool isMainAppBar = false,
  String title = '',
  String icon = 'menu',
  VoidCallback? onPressed,
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(60),
    child: SafeArea(
      child: SizedBox(
        height: 60,
        child: isMainAppBar
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FutureBuilder<String>(
                        future: DashBoardController().getImage(),
                        builder: (context, snapshot) {
                          final image = snapshot.data;
                          if (image == null || image.isEmpty) {
                            return const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage('assets/images/profile_pic.png'),
                            );
                          } else {
                            return CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(image),
                            );
                          }
                        },
                      ),
                      10.wi,
                      FutureBuilder<String>(
                        future: DashBoardController().getName(),
                        builder: (context, snapshot) {
                          final name = snapshot.data ?? '';
                          return Text(
                            'Hello, $name!',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: EnvColors.primaryColor,
                                    ),
                          );
                        },
                      ),
                    ],
                  ),
                  SvgPicture.asset('notification'.svg),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox.shrink(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      hasBackButton
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_back_ios),
                            )
                          : Text(
                              title,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: EnvColors.primaryColor,
                                  ),
                            ),
                      InkWell(
                        onTap: onPressed,
                        overlayColor: MaterialStateProperty.all(
                          EnvColors.primaryColor.withOpacity(
                            0.5,
                          ),
                        ),
                        child: SvgPicture.asset(
                          icon.svg,
                          colorFilter: const ColorFilter.mode(
                            EnvColors.primaryColor,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 16),
                  Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                    height: 0,
                    indent: 0,
                    endIndent: 0,
                  ),
                ],
              ),
      ).paddingSymmetric(
        horizontal: isMainAppBar ? 16 : 0,
      ),
    ),
  );
}
