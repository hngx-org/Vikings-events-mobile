import 'package:flutter/widgets.dart';

extension SizedBoxExtension on num {
  Widget get hi => SizedBox(height: toDouble());

  Widget get wi => SizedBox(width: toDouble());

  Widget hw(double width) =>
      SizedBox(width: width.toDouble(), height: toDouble());
}
