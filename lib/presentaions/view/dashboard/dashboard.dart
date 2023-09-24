import 'package:event_app/core/extensions/string_extension.dart';
import 'package:event_app/presentaions/controllers/dashboard_controller.dart';
import 'package:event_app/presentaions/shared/dubm_widgets/env_appbar.dart';
import 'package:event_app/presentaions/view/calendar/calendart.dart';
import 'package:event_app/presentaions/view/home/home.dart';
import 'package:event_app/presentaions/view/my_group/create_group_view.dart';
import 'package:event_app/presentaions/view/my_group/my_group_main_view.dart';
import 'package:event_app/presentaions/view/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Dashboard extends HookConsumerWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  // Widget build(BuildContext context, WidgetRef ref) {
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardVM = ref.watch(dashBoardControllerProvider);

    return Scaffold(
      appBar: leadingAppBarList(context)[dashboardVM.page],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: dashboardVM.page,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        selectedFontSize: 14,
        onTap: (value) =>
            ref.read(dashBoardControllerProvider.notifier).switchPage(value),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('home'.svg),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('people'.svg),
            label: 'My Group',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('calendar'.svg),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('settings'.svg),
            label: 'Settings',
          ),
        ],
      ),
      body: [
        //!TODO: Add the pages here
        const Home(),
        const MyGroupView(),
        const Calender(),
        const SettingsView(),
      ][dashboardVM.page],
    );
  }
}

List leadingAppBarList(BuildContext context) => [
      customAppBar(
        context,
        isMainAppBar: true,
      ),
      customAppBar(context, title: 'My Group', icon: 'people', onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateGroupView(),
            ));
      }),
      customAppBar(
        context,
        title: 'Calendar',
      ),
      customAppBar(
        context,
        title: 'Settings',
      )
    ];
