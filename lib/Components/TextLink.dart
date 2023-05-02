import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextLink extends StatelessWidget {
  final String Light_label;
  final String Dark_label;
  final VoidCallback onPressed;
  const TextLink({
    super.key,
    required this.Light_label,
    required this.Dark_label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            Light_label,
            style: TextStyle(
                fontFamily: 'Outfit',
                color: Color.fromARGB(255, 123, 123, 123),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          ),
          Text(
            Dark_label,
            style: TextStyle(
                fontFamily: 'Outfit',
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 14.sp,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
