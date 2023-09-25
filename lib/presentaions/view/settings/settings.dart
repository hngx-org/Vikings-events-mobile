import 'package:event_app/core/constants/constants.dart';
import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/data/local/local.dart';
import 'package:event_app/presentaions/controllers/dashboard_controller.dart';
import 'package:event_app/presentaions/model/model.dart';
import 'package:event_app/presentaions/shared/dubm_widgets/env_icon_button.dart';
import 'package:event_app/presentaions/view/authentication/log_in.dart';
import 'package:event_app/utils/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../shared/dubm_widgets/env_icon_tile.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            EnvListTileWidget(
              leading: FutureBuilder<String>(
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
              title: FutureBuilder<String>(
                future: DashBoardController().getName(),
                builder: (context, snapshot) {
                  final name = snapshot.data ?? '';
                  return Text(
                    name,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: EnvColors.primaryColor,
                        ),
                  );
                },
              ),
              titleTextStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
              subtitle: FutureBuilder<String>(
                future: DashBoardController().getEmail(),
                builder: (context, snapshot) {
                  final email = snapshot.data ?? '';
                  return Text(
                    email,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary),
                  );
                },
              ),
              trailing: EnvIconButtonWidget(
                onPressed: () {},
                icon: SvgPicture.asset('arrow-right'.svg),
              ),
            ),
            const Divider(),
            EnvListTileWidget(
              leading: SvgPicture.asset('lock'.svg),
              title: const Text('Security and Privacy'),
              titleTextStyle: Theme.of(context).textTheme.titleSmall,
              subtitle: Text(
                'Password, two-factor authentication',
                style: TextStyle(fontSize: 12.sp),
              ),
              trailing: EnvIconButtonWidget(
                onPressed: () {},
                icon: SvgPicture.asset('arrow-right'.svg),
              ),
            ),
            const Divider(),
            EnvListTileWidget(
              leading: SvgPicture.asset('settings'.svg),
              title: const Text('Main Settings'),
              titleTextStyle: Theme.of(context).textTheme.titleSmall,
              subtitle: Text('Notifications, Language, Beneficiaries',
                  style: TextStyle(fontSize: 12.sp)),
              trailing: EnvIconButtonWidget(
                onPressed: () {},
                icon: SvgPicture.asset('arrow-right'.svg),
              ),
            ),
            const Divider(),
            EnvListTileWidget(
              leading: SvgPicture.asset('message-question'.svg),
              title: const Text('Support'),
              titleTextStyle: Theme.of(context).textTheme.titleSmall,
              subtitle: Text('Help Center, Contact us 24/7, In-chat Support',
                  style: TextStyle(fontSize: 12.sp)),
              trailing: EnvIconButtonWidget(
                onPressed: () {},
                icon: SvgPicture.asset('arrow-right'.svg),
              ),
            ),
            const Divider(),
            EnvListTileWidget(
              leading: SvgPicture.asset('document'.svg),
              title: const Text('Legal'),
              titleTextStyle: Theme.of(context).textTheme.titleSmall,
              subtitle: Text('Terms and Conditions, Pricacy Policy',
                  style: TextStyle(fontSize: 12.sp)),
              trailing: EnvIconButtonWidget(
                onPressed: () {},
                icon: SvgPicture.asset('arrow-right'.svg),
              ),
            ),
            const Divider(),
            EnvListTileWidget(
              leading: SvgPicture.asset('info-circle'.svg),
              title: const Text('About'),
              titleTextStyle: Theme.of(context).textTheme.titleSmall,
              subtitle:
                  Text('About Wetindeysup', style: TextStyle(fontSize: 12.sp)),
              trailing: EnvIconButtonWidget(
                onPressed: () {},
                icon: SvgPicture.asset('arrow-right'.svg),
              ),
            ),
            const Divider(),
            EnvListTileWidget(
              onTap: () {
                locator<SecureStorageService>().deleteAll();
                ref.read(dashBoardControllerProvider.notifier).resetPage();
                logout();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return const LogIn();
                  }),
                );
              },
              leading: SvgPicture.asset('logout'.svg),
              title: const Text('Logout'),
              titleTextStyle: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.error),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
