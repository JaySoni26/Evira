import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoubleHeading extends StatelessWidget {
  final String firstText;
  final String secondText;
  final double space;
  final TextStyle firstTextStyle;
  final TextStyle secondTextStyle;
  final TextAlign firstTextAlign;
  final TextAlign secondTextAlign;
  final Color firstTextColor;
  final Color secondTextColor;

  const DoubleHeading({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.space,
    required this.firstTextStyle,
    required this.secondTextStyle,
    required this.firstTextAlign,
    required this.secondTextAlign,
    required this.firstTextColor,
    required this.secondTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          firstText,
          style: firstTextStyle.copyWith(color: firstTextColor),
          textAlign: firstTextAlign,
        ),
        SizedBox(height: space.h),
        Text(
          secondText,
          style: secondTextStyle.copyWith(color: secondTextColor),
          textAlign: secondTextAlign,
        ),
      ],
    );
  }
}
