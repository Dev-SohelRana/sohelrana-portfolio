import 'dart:html' as html;

class ResumeDownloader {
  static void download() {
    final anchor = html.AnchorElement(href: '/resume/resume.pdf')
      ..target = '_blank'
      ..download = 'resume.pdf';

    anchor.click();
  }
}
