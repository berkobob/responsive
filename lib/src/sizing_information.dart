import 'package:flutter/material.dart';

import 'operating_system.dart';
import 'device_screen_type.dart';

class SizingInformation {
  final Orientation? orientation;
  final DeviceScreenType? deviceScreenType;
  final Size? screenSize;
  final Size? localWidgetSize;
  final OperatingSystem operatingSystem;

  SizingInformation(
      {required this.operatingSystem,
      this.orientation,
      this.deviceScreenType,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString() {
    return 'Orientation: $orientation, DeviceScreentType: $deviceScreenType,\n'
        'Screen size: $screenSize, Widget size: $localWidgetSize\n'
        'Operating System: $operatingSystem';
  }
}
