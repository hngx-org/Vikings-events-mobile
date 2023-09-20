import 'package:event_app/ui/views/startup/startup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      viewModelBuilder: () => StartupViewModel(),
   
      builder: (
        BuildContext context,
        StartupViewModel model,
        Widget? child,
        
      ) {
        return const Scaffold(
          body: Center(
          child: Text(
              'StartupView',
            ),
          ),
        );
      },
    );
  }
}