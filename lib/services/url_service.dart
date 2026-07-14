import 'package:url_launcher/url_launcher.dart';

class UrlService {
  static Future<void> open(String url) async {
    final uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  static Future<void> email(String email) async {
    await open("mailto:$email");
  }

  static Future<void> phone(String phone) async {
    await open("tel:$phone");
  }
}
