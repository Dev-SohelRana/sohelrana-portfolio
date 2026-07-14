import 'dart:html' as html;

class ResumeDownloader {
  static void download() {
    final anchor = html.AnchorElement(href: '/resume/report.pdf')
      ..target = '_blank'
      ..download = 'report.pdf';

    anchor.click();
  }
}
