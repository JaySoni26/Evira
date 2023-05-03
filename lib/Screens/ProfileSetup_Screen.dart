import 'package:evira_mark_2/Components/Headings.dart';
import 'package:evira_mark_2/Constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../Components/Buttons.dart';
import '../Components/TopBar.dart';

class ProfileSetup_Screen extends StatefulWidget {
  const ProfileSetup_Screen({super.key});

  @override
  State<ProfileSetup_Screen> createState() => _ProfileSetup_ScreenState();
}

class _ProfileSetup_ScreenState extends State<ProfileSetup_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 24, bottom: 0, left: 24, right: 24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopBar(
                  icon: IconlyLight.arrow_left,
                  labelOn: false,
                  secondaryIconOn: false,
                  onPressedIcon: () => Navigator.pop(context),
                ),
                SizedBox(height: 24.h),
                DoubleHeading(
                  firstText: 'Profile',
                  secondText:
                      'Complete your profile for faster checkout \nand delivery.',
                  space: 10,
                  firstTextStyle: kH1,
                  secondTextStyle: kP,
                  firstTextAlign: TextAlign.left,
                  secondTextAlign: TextAlign.left,
                  firstTextColor: kBlack,
                  secondTextColor: kTextLightBlack,
                  columnAlignment: CrossAxisAlignment.start,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: HorizontalButton(
          label: 'Continue',
          color: kBlackGradient,
          onPressed: () {},
          textColor: kWhite,
          boxShadow: true,
          border: false,
          imageON: false,
        ),
      ),
    );
  }
}
