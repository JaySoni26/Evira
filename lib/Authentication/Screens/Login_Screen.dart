import 'package:evira_mark_2/Authentication/Components/Buttons.dart';
import 'package:evira_mark_2/Authentication/Components/Divider.dart';
import 'package:evira_mark_2/Authentication/Components/TextLink.dart';
import 'package:evira_mark_2/Authentication/Screens/EmailLogin_Screen.dart';
import 'package:flutter/material.dart';
import 'package:evira_mark_2/Constraints.dart';
import 'package:evira_mark_2/Authentication/Components/Headings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'PhoneNumberLogin_Screen.dart';
import 'ProfileSetup_Screen.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              //1st-Logo
              Spacer(
                flex: 3,
              ),
              Center(child: kLogoBig),
              Spacer(),
              //2nd-Heading
              DoubleHeading(
                firstText: 'Evira',
                secondText: 'Get everything you want, at your\nfingertips.',
                space: 10,
                firstTextStyle: kH1,
                secondTextStyle: kP,
                firstTextAlign: TextAlign.center,
                secondTextAlign: TextAlign.center,
                firstTextColor: kBlack,
                secondTextColor: kBlack,
                columnAlignment: CrossAxisAlignment.center,
              ),
              Spacer(
                flex: 2,
              ),
              HorizontalButton(
                label: 'Continue with facebook',
                color: kWhiteGradient,
                onPressed: () {},
                textColor: kTextBlack,
                boxShadow: false,
                border: true,
                imageON: true,
                imagePath: 'Assets/FB.svg',
              ),
              SizedBox(height: 14.h),
              HorizontalButton(
                label: 'Continue with Google',
                color: kWhiteGradient,
                onPressed: () {},
                textColor: kTextBlack,
                boxShadow: false,
                border: true,
                imageON: true,
                imagePath: 'Assets/G.svg',
              ),
              SizedBox(height: 14.h),
              HorizontalButton(
                label: 'Continue with Evira',
                color: kWhiteGradient,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EmailLogin_Screen()),
                  );
                },
                textColor: kTextBlack,
                boxShadow: false,
                border: true,
                imageON: true,
                imagePath: 'Assets/A.svg',
              ),
              Spacer(),
              OrDivider(),
              Spacer(),
              HorizontalButton(
                label: 'Continue with Phone Number',
                color: kBlackGradient,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PhoneNumberLogin_Screen()),
                  );
                },
                textColor: kWhite,
                boxShadow: true,
                border: false,
                imageON: true,
                imagePath: 'Assets/Call.svg',
              ),
              Spacer(),
              TextLink(
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
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
