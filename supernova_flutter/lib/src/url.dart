import 'package:supernova/supernova.dart';
import 'package:url_launcher/url_launcher.dart';

/// Tries launching a url.
Future<bool> tryLaunchingUrl(Uri url) async {
  logger.debug("Trying to launch url '$url'…");
  if (!await canLaunchUrl(url)) {
    logger.error("Failed to launch url '$url");
    return false;
  }

  await launchUrl(url, mode: LaunchMode.externalApplication);
  return true;
}
