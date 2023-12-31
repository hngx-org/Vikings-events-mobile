// import 'package:event_app/core/enums/statusbar_enums.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// /// An extension used to enhance the [StatusbarType] enum.
// extension StatusbarTypeExtension on StatusbarType {
//   /// Returns true  if the [StatusbarType] is light.
//   bool get isLight => this == StatusbarType.light;

//   /// Returns the [Brightness] of the status bar.
//   bool get isDark => this == StatusbarType.dark;
// }

// /// This widget acts as a wrapper for system status bar.
// /// Wrap your top most widget with this widget to change the status bar theme.
// class Statusbar extends StatelessWidget {
//   /// This constructor sets the [Statusbar] theme mode to light by default.
//   const Statusbar({
//     super.key,
//     this.statusbarType = StatusbarType.light,
//     required this.child,
//   });

//   /// This constructor sets the [Statusbar]  theme mode to dark.
//   const Statusbar.dark({
//     super.key,
//     required this.child,
//   }) : statusbarType = StatusbarType.dark;

//   /// An enum used to represent the status bar theme.
//   final StatusbarType statusbarType;

//   ///  The child widget that will be wrapped by this widget.
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion(
//       value: SystemUiOverlayStyle(
//         statusBarColor: Theme.of(context).scaffoldBackgroundColor,
//         statusBarIconBrightness:
//             statusbarType.isLight ? Brightness.dark : Brightness.light,
//       ),
//       child: child,
//     );
//   }
// }
