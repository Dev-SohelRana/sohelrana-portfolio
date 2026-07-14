// import 'package:flutter/material.dart';
// import 'package:jackjaron_app/constants/text_font_style.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

// class HtmlViewWidget extends StatelessWidget {
//   final String input;
//   const HtmlViewWidget({super.key, required this.input});

//   @override
//   Widget build(BuildContext context) {
//     return HtmlWidget(
//       input,
//       onTapUrl: (String url) async {
//         final Uri uri = Uri.parse(url);

//         // 1. Email handling
//         if (url.startsWith('mailto:')) {
//           try {
//             // Direct launch korar try kori
//             await launchUrl(uri, mode: LaunchMode.externalApplication);
//             return true;
//           } catch (e) {
//             debugPrint("Error launching mail: $e");
//             return false;
//           }
//         }

//         // 2. Web URL handling
//         String formattedUrl = url;
//         if (!url.startsWith('http')) {
//           formattedUrl = 'https://$url';
//         }

//         final Uri webUri = Uri.parse(formattedUrl);
//         if (await canLaunchUrl(webUri)) {
//           await launchUrl(webUri, mode: LaunchMode.externalApplication);
//           return true;
//         }
//         return false;
//       },
//       renderMode: RenderMode.column,
//       // Image responsive korar jonno
//       customStylesBuilder: (element) {
//         if (element.localName == 'img') {
//           return {'max-width': '100%', 'height': 'auto'};
//         }
//         return null;
//       },
//       textStyle: TextFontStyle.headlinePoppins40012,
//     );
//   }
// }

// // URL handle kora
// // onTapUrl: (String url) async {
// //   // Check if it's a mailto link
// //   if (url.startsWith('mailto:')) {
// //     final Uri emailUri = Uri.parse(url);
// //     if (await canLaunchUrl(emailUri)) {
// //       await launchUrl(emailUri);
// //       return true;
// //     } else {
// //       debugPrint("Cannot launch email app");
// //       return false;
// //     }
// //   }

// //   // Existing logic for web links
// //   String formattedUrl = url;
// //   if (!url.startsWith('http')) {
// //     formattedUrl = 'https://$url';
// //   }

// //   final Uri uri = Uri.parse(formattedUrl);
// //   if (await canLaunchUrl(uri)) {
// //     await launchUrl(uri, mode: LaunchMode.externalApplication);
// //     return true;
// //   }
// //   return false;
// // },
// // onTapUrl: (String url) async {
// //   // Jodi link e mailto na thake ebong http/https o na thake,
// //   // tobe shurute 'https://' add kore dewa safe
// //   String formattedUrl = url;
// //   if (!url.startsWith('http') && !url.startsWith('mailto:')) {
// //     formattedUrl = 'https://$url';
// //   }

// //   final Uri uri = Uri.parse(formattedUrl);

// //   if (await canLaunchUrl(uri)) {
// //     await launchUrl(uri, mode: LaunchMode.externalApplication);
// //     return true;
// //   } else {
// //     debugPrint("Could not launch $url");
// //     return false;
// //   }
// // },
// // Image venge jawar somossa fix korar jonno:
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //

// //
// // import 'package:flutter/material.dart';
// // import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
// // import 'package:jackjaron_app/constants/text_font_style.dart';

// // class HtmlViewWidget extends StatelessWidget {
// //   final String input;
// //   const HtmlViewWidget({super.key, required this.input});

// //   @override
// //   Widget build(BuildContext context) {
// //     return HtmlWidget(
// //       ''' $input ''',
// //       customStylesBuilder: (element) {
// //         if (element.classes.contains('foo')) {
// //           return {'color': 'red'};
// //         }
// //         return null;
// //       },
// //       customWidgetBuilder: (element) {
// //         if (element.attributes['foo'] == 'bar') {
// //           // render a custom widget that takes the full width
// //         }
// //         if (element.attributes['fizz'] == 'buzz') {
// //           // render a custom widget that inlines with surrounding text
// //         }
// //         return null;
// //       },
// //       renderMode: RenderMode.column,
// //       textStyle: TextFontStyle.headlinePoppins40012,
// //     );
// //   }
// // }
