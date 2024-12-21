import 'package:url_launcher/url_launcher.dart';

extension StringExtension on String {
  /// Opens the URL in external browser
  Future<bool> openLinkInBrowser() async {
    final link = Uri.parse(this);
    if (await launchUrl(
      link,
      mode: LaunchMode.externalApplication,
    )) {
      await launchUrl(
        link,
        mode: LaunchMode.externalApplication,
      );
      return true;
    } else {
      return false;
    }
  }
}
