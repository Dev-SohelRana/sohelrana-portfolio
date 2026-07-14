// import 'package:flutter/foundation.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ResumeService {
//   static Future<void> downloadResume() async {
//     final Uri url;

//     if (kIsWeb) {
//       url = Uri.parse('assets/assets/resume/report.pdf');
//     } else {
//       url = Uri.parse('https://your-domain.com/report.pdf');
//     }

//     if (await canLaunchUrl(url)) {
//       await launchUrl(url, mode: LaunchMode.externalApplication);
//     }
//   }
// }

import 'resume_service_stub.dart'
    if (dart.library.html) 'resume_service_web.dart';

class ResumeService {
  static void downloadResume() {
    ResumeDownloader.download();
  }
}
