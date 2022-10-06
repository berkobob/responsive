import 'package:flutter/material.dart';

import 'device_screen_type.dart';
import 'operating_system.dart';
import 'sizing_information.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  const ResponsiveBuilder({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxConstraints) {
      final sizingInformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceScreenType: DeviceScreenType.fromWidth(mediaQuery.size.width),
        screenSize: mediaQuery.size,
        localWidgetSize:
            Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
        operatingSystem: OperatingSystem.fromOS(),
      );
      return builder(context, sizingInformation);
    });
  }
}
