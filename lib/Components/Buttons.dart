import 'package:evira_mark_2/Constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalButton extends StatelessWidget {
  final String label;
  final LinearGradient color;
  final VoidCallback onPressed;
  final String? imagePath;
  final Color textColor;
  final bool boxShadow;
  final bool border;
  final bool imageON;
  final Function? onButtonTap;

  const HorizontalButton({
    Key? key,
    required this.label,
    required this.color,
    required this.onPressed,
    this.imagePath,
    required this.textColor,
    required this.boxShadow,
    required this.border,
    required this.imageON,
    this.onButtonTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: InkWell(
        onTap: () {
          onButtonTap?.call();
          onPressed();
        },
        child: Container(
          height: 55.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.h),
            boxShadow: boxShadow
                ? [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      //spreadRadius: 20,
                      blurRadius: 40,
                      offset: Offset(4, 18),
                    ),
                  ]
                : null,
            border: border
                ? Border.all(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    width: 1,
                  )
                : null,
            gradient: color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (imageON && imagePath != null)
                SvgPicture.asset(
                  imagePath!,
                  width: 24.h,
                  height: 24.w,
                ),
              SizedBox(width: 12.w),
              Text(
                label,
                style: kCTAText.copyWith(color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
