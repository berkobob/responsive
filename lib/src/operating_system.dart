import 'dart:io';

enum OperatingSystem {
  android,
  fuchsia,
  ios,
  linux,
  macos,
  windows,
  web;

  factory OperatingSystem.fromOS() {
    try {
      switch (Platform.operatingSystem) {
        case 'linux':
          return OperatingSystem.linux;
        case 'macos':
          return OperatingSystem.macos;
        case 'android':
          return OperatingSystem.android;
        case 'ios':
          return OperatingSystem.ios;
        case 'fuchsia':
          return OperatingSystem.fuchsia;
        case 'windows':
          return OperatingSystem.windows;
      }
    } catch (e) {
      return OperatingSystem.web;
    }
    return OperatingSystem.web;
  }
}
