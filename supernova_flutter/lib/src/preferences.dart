import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

import 'widgets/async.dart';

T usePreference<T>(Preference<T> preference) {
  useStream(() => preference, keys: [preference]);
  return preference.getValue();
}
