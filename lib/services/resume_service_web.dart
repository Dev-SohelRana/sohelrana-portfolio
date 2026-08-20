import 'dart:html' as html;

class ResumeDownloader {
  static void download() {
    // Flutter copies declared assets to `assets/assets/` in the web build.
    // The previous `/resume/resume.pdf` URL did not exist, so it downloaded
    // the app's HTML fallback with a .pdf extension.
    final anchor = html.AnchorElement(href: 'assets/assets/resume/resume.pdf')
      ..download = 'Resume_Sohel.pdf';

    anchor.click();
  }
}
