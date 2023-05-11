import 'package:evira_mark_2/Constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1.h,
            color: Color.fromARGB(255, 222, 222, 222),
          ),
        ),
        SizedBox(width: 10),
        Text(
          "or",
          style: kH4.copyWith(color: Color(0xFF373737)),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 1,
            color: Color.fromARGB(255, 222, 222, 222),
          ),
        ),
      ],
    );
  }
}
