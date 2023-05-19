import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:platformx/platformx.dart';
import 'package:supernova/supernova.dart' as supernova;
import 'package:time_machine/time_machine.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'src/localization.dart';
import 'src/localization.dart' as localization;
import 'src/logger.dart';
import 'src/services.dart';

export 'dart:ui'
    hide
        Gradient,
        Image,
        StrutStyle,
        TextDirection,
        TextStyle,
        decodeImageFromList;

export 'package:align_positioned/align_positioned.dart';
export 'package:auto_size_text/auto_size_text.dart';
export 'package:black_hole_flutter/black_hole_flutter.dart';
export 'package:flutter/foundation.dart'
    hide Factory, binarySearch, clampDouble, mergeSort;
export 'package:flutter/material.dart'
    hide
        FutureBuilder,
        // ignore: undefined_hidden_name
        ImageDecoderCallback,
        SnapshotWidget,
        StepState,
        Stepper,
        StreamBuilder;
export 'package:flutter/services.dart';
export 'package:flutter_blurhash/flutter_blurhash.dart';
export 'package:flutter_hooks/flutter_hooks.dart' hide useFuture, useStream;
export 'package:flutter_svg/flutter_svg.dart';
export 'package:get_it/get_it.dart' show GetIt;
export 'package:sliver_tools/sliver_tools.dart';
export 'package:supernova/supernova.dart'
    hide
        AsyncValueGetter,
        AsyncValueSetter,
        ValueChanged,
        ValueGetter,
        ValueSetter,
        VoidCallback,
        initSupernova;
export 'package:web_socket_channel/web_socket_channel.dart';

export 'src/caching/module.dart';
export 'src/color.dart';
export 'src/date_time.dart';
export 'src/empty_state_page_content.dart';
export 'src/firebase.dart';
export 'src/floating_action_button.dart';
export 'src/form/module.dart';
export 'src/hooks.dart';
export 'src/icons.dart';
export 'src/json.dart';
export 'src/localization.dart';
export 'src/logger.dart' hide initLogging;
export 'src/navigation.dart';
export 'src/padding.dart';
export 'src/pages/coming_soon.dart';
export 'src/pages/not_found.dart';
export 'src/platform.dart';
export 'src/scroll_controller.dart';
export 'src/services.dart' hide initServices;
export 'src/sliver.dart';
export 'src/url.dart';
export 'src/widgets/adaptive_page.dart';
export 'src/widgets/async.dart';
export 'src/widgets/circle.dart';
export 'src/widgets/date_time.dart';
export 'src/widgets/desktop_page.dart';
export 'src/widgets/divider.dart';
export 'src/widgets/help_icon.dart';
export 'src/widgets/preferences.dart';
export 'src/widgets/stepper.dart';

Future<void> initSupernova({
  FirebaseOptions? firebaseOptions,
  AddressingFormality addressingFormality = AddressingFormality.informal,
  bool shouldInitializeTimeMachine = true,
}) async {
  localization.addressingFormality = addressingFormality;
  await supernova.initSupernova(shouldInitializeTimeMachine: false);
  initLogging();
  WidgetsFlutterBinding.ensureInitialized();

  usePathUrlStrategy();

  if (shouldInitializeTimeMachine) {
    final timeZoneOverride = _isFlutterNativeTimezoneSupported
        ? await FlutterNativeTimezone.getLocalTimezone()
        : null;
    await TimeMachine.initialize(
      flutterRootBundle: rootBundle,
      timeZoneOverride: timeZoneOverride,
    );
  }

  await initServices(firebaseOptions: firebaseOptions);

  // https://pub.dev/packages/timeago#adding-locales
  timeago.setLocaleMessages('de', timeago.DeMessages());
}

bool get _isFlutterNativeTimezoneSupported {
  // https://pub.dev/packages/flutter_native_timezone
  switch (PlatformX.platform) {
    case PlatformEnum.Android:
    case PlatformEnum.IOS:
    case PlatformEnum.MacOS:
    case PlatformEnum.Web:
      return true;
    case PlatformEnum.Fuchsia:
    case PlatformEnum.Linux:
    case PlatformEnum.Windows:
      return false;
  }
}
