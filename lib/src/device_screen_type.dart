enum DeviceScreenType {
  mobile,
  tablet,
  desktop;

  factory DeviceScreenType.fromWidth(double width) {
    if (width > 950) return DeviceScreenType.desktop;
    if (width > 650) return DeviceScreenType.tablet;
    return DeviceScreenType.mobile;
  }
}
