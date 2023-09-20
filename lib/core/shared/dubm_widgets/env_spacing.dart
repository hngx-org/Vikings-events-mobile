import 'package:event_app/core/constants/env_dimensions.dart';
import 'package:flutter/material.dart';

class EnvSpacing extends StatelessWidget {
  const EnvSpacing({super.key})
      : height = EnvDimension.zero,
        width = EnvDimension.zero;
  const EnvSpacing.xxxLargeWidth({Key? key})
      : this.width(EnvDimension.xxxLarge, key: key);

  const EnvSpacing.xxLargeWidth({Key? key})
      : this.width(EnvDimension.xxLarge, key: key);

  const EnvSpacing.xLargeWidth({Key? key})
      : this.width(EnvDimension.xLarge, key: key);

  const EnvSpacing.largeWidth({Key? key})
      : this.width(EnvDimension.large, key: key);

  const EnvSpacing.bigWidth({Key? key})
      : this.width(EnvDimension.big, key: key);

  const EnvSpacing.mediumWidth({Key? key})
      : this.width(EnvDimension.medium, key: key);

  const EnvSpacing.smallWidth({Key? key})
      : this.width(EnvDimension.small, key: key);

  const EnvSpacing.xxxSmallWidth({Key? key})
      : this.width(EnvDimension.xxxSmall, key: key);

  const EnvSpacing.xxSmallWidth({Key? key})
      : this.width(EnvDimension.xxSmall, key: key);

  const EnvSpacing.xSmallWidth({Key? key})
      : this.width(EnvDimension.xSmall, key: key);

  const EnvSpacing.tinyWidth({Key? key})
      : this.width(EnvDimension.tiny, key: key);
  const EnvSpacing.xxxLargeHeight({Key? key})
      : this.height(EnvDimension.xxxLarge, key: key);

  const EnvSpacing.xxLargeHeight({Key? key})
      : this.height(EnvDimension.xxLarge, key: key);

  const EnvSpacing.xLargeHeight({Key? key})
      : this.height(EnvDimension.xLarge, key: key);

  const EnvSpacing.largeHeight({Key? key})
      : this.height(EnvDimension.large, key: key);

  const EnvSpacing.bigHeight({Key? key})
      : this.height(EnvDimension.big, key: key);

  const EnvSpacing.mediumHeight({Key? key})
      : this.height(EnvDimension.medium, key: key);

  const EnvSpacing.smallHeight({Key? key})
      : this.height(EnvDimension.small, key: key);

  const EnvSpacing.xSmallHeight({Key? key})
      : this.height(EnvDimension.xSmall, key: key);

  const EnvSpacing.xxSmallHeight({Key? key})
      : this.height(EnvDimension.xxSmall, key: key);

  const EnvSpacing.xxxSmallHeight({Key? key})
      : this.height(EnvDimension.xxxSmall, key: key);

  const EnvSpacing.tinyHeight({Key? key})
      : this.height(EnvDimension.tiny, key: key);

  const EnvSpacing.width(this.width, {super.key}) : height = EnvDimension.zero;

  const EnvSpacing.height(this.height, {super.key}) : width = EnvDimension.zero;

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: super.key,
      height: height,
      width: width,
    );
  }
}
