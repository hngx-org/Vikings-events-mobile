import 'package:event_app/presentaions/shared/dubm_widgets/env_list_tile.dart';
import 'package:event_app/presentaions/shared/smart_widgets/env_appbar.dart';
import 'package:event_app/presentaions/view/settings/settings_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/dubm_widgets/env_icon_button.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsData = ref.watch(settingsViewModelProvider);
    return Scaffold(
      appBar: EnvAppBar(
        title: 'Settings',
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Theme.of(context).colorScheme.primary),
        centerTitle: false,
        elevation: 1,
        actions: [
          EnvIconButtonWidget(
              onPressed: () {},
              icon: Icon(Icons.more_vert_outlined,
                  color: Theme.of(context).colorScheme.primary))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          EnvListTileWidget(
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(settingsData.title),
            titleTextStyle: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
            subtitle: Text(
              settingsData.email,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            trailing: EnvIconButtonWidget(
              onPressed: () {},
              icon: Icon(
                Icons.navigate_next,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const Divider(),
          EnvListTileWidget(
            leading: const Icon(Icons.lock),
            title: const Text('Security and Privacy'),
            titleTextStyle: Theme.of(context).textTheme.titleSmall,
            subtitle: Text(
              'Password, two-factor authentication',
              style: TextStyle(fontSize: 12.sp),
            ),
            trailing: EnvIconButtonWidget(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
          const Divider(),
          EnvListTileWidget(
            leading: const Icon(Icons.settings_sharp),
            title: const Text('Main Settings'),
            titleTextStyle: Theme.of(context).textTheme.titleSmall,
            subtitle: Text('Notifications, Language, Beneficiaries',
                style: TextStyle(fontSize: 12.sp)),
            trailing: EnvIconButtonWidget(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
          const Divider(),
          EnvListTileWidget(
            leading: const Icon(Icons.help_outline),
            title: const Text('Support'),
            titleTextStyle: Theme.of(context).textTheme.titleSmall,
            subtitle: Text('Help Center, Contact us 24/7, In-chat Support',
                style: TextStyle(fontSize: 12.sp)),
            trailing: EnvIconButtonWidget(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
          const Divider(),
          EnvListTileWidget(
            leading: const Icon(Icons.article_outlined),
            title: const Text('Legal'),
            titleTextStyle: Theme.of(context).textTheme.titleSmall,
            subtitle: Text('Terms and Conditions, Pricacy Policy',
                style: TextStyle(fontSize: 12.sp)),
            trailing: EnvIconButtonWidget(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
          const Divider(),
          EnvListTileWidget(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            titleTextStyle: Theme.of(context).textTheme.titleSmall,
            subtitle:
                Text('About Wetindeysup', style: TextStyle(fontSize: 12.sp)),
            trailing: EnvIconButtonWidget(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_next,
              ),
            ),
          ),
          const Divider(),
          EnvListTileWidget(
            onTap: () {
              // settingsData.logout();
            },
            leading: Icon(
              Icons.logout,
              color: Theme.of(context).colorScheme.error,
            ),
            title: const Text('Logout'),
            titleTextStyle: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: Theme.of(context).colorScheme.error),
          ),
          const Divider(),
        ],
      )),
    );
  }
}
