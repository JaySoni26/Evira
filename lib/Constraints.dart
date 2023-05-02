import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Svg
final Image kLogoBig = Image.asset(
  'Assets/Logo.png',
  height: 150.h,
  width: 150
      .h, // Replace 'path/to/image.png' with the path to your image asset file
);

//Colors
Color kBlack = const Color(0xFF130F26);
Color kTextBlack = const Color(0xFF373737);
Color kTextLightBlack = const Color(0xFF7B7B7B);
Color kUnactive = const Color(0xFF9E9E9E);
Color kGrey = const Color(0xFFF3F3F3);
Color kWhite = const Color(0xFFFFFFFFF);
LinearGradient kBlackGradient = const LinearGradient(
  colors: [Color(0xFF101010), Color(0xFF313130)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
LinearGradient kWhiteGradient = const LinearGradient(
  colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

//TextStyles
TextStyle kCTAText = TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w500,
  fontSize: 16.sp,
);
TextStyle kH1 = TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w600,
  fontSize: 32.sp,
);
TextStyle kH2 = TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w600,
  fontSize: 24.sp,
);
TextStyle kH3 = TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w600,
  fontSize: 18.sp,
);
TextStyle kH4 = TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w600,
  fontSize: 16.sp,
);
TextStyle kP = TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w400,
  fontSize: 14.sp,
);
TextStyle kInputBoxText = TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w500,
  fontSize: 14.sp,
);
TextStyle kAppBarHeading = TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w600,
  fontSize: 22.sp,
);
TextStyle kBottomSheetHeading = TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w600,
  fontSize: 20.sp,
);
