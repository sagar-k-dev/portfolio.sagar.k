import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class DeviceType {
  DeviceType(this._context) {
    init();
  }

  final BuildContext _context;
  DeviceScreenType _deviceType = DeviceScreenType.mobile;

  void init() {
    final deviceWidth = MediaQuery.of(_context).size.width;

    if (kIsWeb) {
      if (deviceWidth < 600) {
        _deviceType = DeviceScreenType.mobile;
      } else if (deviceWidth >= 600 && deviceWidth < 1100) {
        _deviceType = DeviceScreenType.tablet;
      } else {
        _deviceType = DeviceScreenType.web;
      }
    } else {
      if (deviceWidth < 600) {
        _deviceType = DeviceScreenType.mobile;
      } else if (deviceWidth >= 600 && deviceWidth < 1100) {
        _deviceType = DeviceScreenType.tablet;
      } else {
        _deviceType = DeviceScreenType.web;
      }
    }
  }

  DeviceScreenType get deviceType => _deviceType;
}
