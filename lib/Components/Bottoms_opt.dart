import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../Screens/ProfileSetup_Screen.dart';
import 'Divider.dart';
import 'TextLink.dart';

class Bottoms_Opt extends StatelessWidget {
  const Bottoms_Opt({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrDivider(),
        SizedBox(height: 24.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 55.h,
              width: MediaQuery.of(context).size.width * 0.27,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.h),
                border: Border.all(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset('Assets/G.svg'),
              ),
            ),
            Container(
              height: 55.h,
              width: MediaQuery.of(context).size.width * 0.27,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.h),
                border: Border.all(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset('Assets/A.svg'),
              ),
            ),
            Container(
              height: 55.h,
              width: MediaQuery.of(context).size.width * 0.27,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.h),
                border: Border.all(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset('Assets/FB.svg'),
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h),
        Center(
          child: TextLink(
                Light_label: 'Don’t have an account ? ',
                Dark_label: 'Sign up',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileSetup_Screen()),
                  );
                },
              ),
        ),
        SizedBox(
          height: 14.h,
        ),
      ],
    );
  }
}
