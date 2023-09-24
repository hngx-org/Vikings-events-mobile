import 'package:event_app/presentaions/view/authentication/log_in.dart';
import 'package:event_app/utils/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oktoast/oktoast.dart';
import 'package:event_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'core/theme/env_theme_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpLocator();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]).then(
    (_) => runApp(
      const ProviderScope(
        child: EventApp(),
      ),
    ),
  );
}

class EventApp extends StatelessWidget {
  const EventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: ScreenUtilInit(
        designSize: ScreenUtil.defaultSize,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, __) {
          return MaterialApp(
            title: 'Vikings Event App',
            themeMode: ThemeMode.light,
            theme: EnvThemeManager.lightTheme,
            debugShowCheckedModeBanner: false,
            home: const Scaffold(
              body: LogIn(),
            ),
          );
        },
      ),
    );
  }
}
