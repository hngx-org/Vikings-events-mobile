import 'package:event_app/app/app.bottomsheets.dart';
import 'package:event_app/app/app.dialogs.dart';
import 'package:event_app/app/app.locator.dart';
import 'package:event_app/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';

import 'core/theme/env_theme_manager.dart';

void main() {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]).then(
    (_) => runApp(ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => const EventApp(),
    )),
  );
}

class EventApp extends StatelessWidget {
  const EventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vikings Event App',
      themeMode: ThemeMode.light,
      theme: EnvThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
