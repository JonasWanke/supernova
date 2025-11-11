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
    return switch (this) {
      PlatformEnum.Android => android,
      PlatformEnum.IOS => ios,
      PlatformEnum.Web => web,
      PlatformEnum.Windows => windows,
      PlatformEnum.Linux => linux,
      PlatformEnum.MacOS => macOs,
      PlatformEnum.Fuchsia => fuchsia,
    };
  }
}
