// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:sohelrana_portfolio/assets_helper/app_colors.dart';
// import 'package:sohelrana_portfolio/assets_helper/app_icons.dart';
// import 'package:sohelrana_portfolio/constants/text_font_style.dart';

// class CustomAppBarWidget extends StatelessWidget
//     implements PreferredSizeWidget {
//   final String? title;
//   final VoidCallback? leadingOnTap;
//   final VoidCallback? actionOnTap;
//   final Widget? actionWidget;
//   final bool showLeadingIcon;

//   const CustomAppBarWidget({
//     super.key,
//     this.title,
//     this.leadingOnTap,
//     this.actionWidget,
//     this.showLeadingIcon = true,
//     this.actionOnTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12.w),
//       child: AppBar(
//         leadingWidth: 55.w,
//         backgroundColor: AppColors.cFFFFFF,
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         leading: showLeadingIcon
//             ? GestureDetector(
//                 onTap: leadingOnTap,
//                 child: Padding(
//                   padding: EdgeInsets.all(6.sp),
//                   child: SvgPicture.asset(AppIcons.arrowBackIcon),
//                 ),
//               )
//             : const SizedBox.shrink(),
//         title: Text(title ?? '', style: TextFontStyle.headlinePoppins60024),
//         actions: [
//           if (actionWidget != null)
//             GestureDetector(onTap: actionOnTap, child: actionWidget),
//         ],
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(60.h);
// }
