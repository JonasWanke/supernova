import 'package:platformx/platformx.dart';

extension PlatformEnumSupernova on PlatformEnum {
  T? mapOrNull<T extends Object>({
    T? android,
    T? ios,
    T? web,
    T? windows,
    T? linux,
    T? macOs,
    T? fuchsia,
  }) {
    switch (this) {
      case PlatformEnum.Android:
        return android;
      case PlatformEnum.IOS:
        return ios;
      case PlatformEnum.Web:
        return web;
      case PlatformEnum.Windows:
        return windows;
      case PlatformEnum.Linux:
        return linux;
      case PlatformEnum.MacOS:
        return macOs;
      case PlatformEnum.Fuchsia:
        return fuchsia;
    }
  }
}
