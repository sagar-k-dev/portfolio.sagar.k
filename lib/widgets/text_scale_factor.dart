import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/responsive_builder.dart' as responsive;

import 'package:flutter/foundation.dart';

class ScaleSize {
  static double textScaleFactor(
    BuildContext context, {
    double maxTextScaleFactor = 2.5,
  }) {
    final width = MediaQuery.of(context).size.width;

    if (kIsWeb && width < 600) {
      return _clampScale(width / 600 * maxTextScaleFactor, 1.0, 1.5);
    }

    final device = responsive.DeviceType(context).deviceType;

    switch (device) {
      case DeviceScreenType.mobile:
        return _clampScale(
            width / 600 * maxTextScaleFactor, 1.1, maxTextScaleFactor);
      case DeviceScreenType.tablet:
        return _clampScale(width / 1000 * maxTextScaleFactor, 0.95, 1.6);
      case DeviceScreenType.web:
        return _clampScale(width / 1200 * maxTextScaleFactor, 0.9, 2);
    }
  }

  static double _clampScale(double value, double minVal, double maxVal) {
    return max(minVal, min(value, maxVal));
  }
}
