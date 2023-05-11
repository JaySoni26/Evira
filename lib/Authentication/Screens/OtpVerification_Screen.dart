import 'package:evira_mark_2/Authentication/Screens/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../Components/Buttons.dart';
import '../Components/Headings.dart';
import '../Components/TextLink.dart';
import '../Components/TopBar.dart';
import '../../Constraints.dart';

class OtpVerification_Screen extends StatelessWidget {
  final String? PhoneNumber;
  OtpVerification_Screen({super.key, required this.PhoneNumber});

  void closeKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopBar(
                icon: IconlyLight.arrow_left,
                labelOn: false,
                secondaryIconOn: false,
                onPressedIcon: () => Navigator.pop(context),
              ),
              SizedBox(height: 24.h),
              DoubleHeading(
                firstText: 'OTP',
                secondText: 'Enter the code send to $PhoneNumber',
                space: 10,
                firstTextStyle: kH1,
                secondTextStyle: kP,
                firstTextAlign: TextAlign.left,
                secondTextAlign: TextAlign.left,
                firstTextColor: kBlack,
                secondTextColor: kTextLightBlack,
                columnAlignment: CrossAxisAlignment.start,
              ),
              Spacer(),
              OtpTextField(
                numberOfFields: 4,
                borderWidth: 1.5,
                borderColor: kBlack.withOpacity(0.15),
                focusedBorderColor: kBlack,
                borderRadius: BorderRadius.circular(20.h),
                fieldWidth: 55.w,
                textStyle: kH3,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login_Screen()),
                  );
                }, // end onSubmit
              ),
              Spacer(
                flex: 2,
              ),
              TextLink(
                Light_label: 'Didn`t Reccive ?',
                Dark_label: ' Resend',
                onPressed: () {},
              ),
              SizedBox(
                height: 24.h,
              ),
              HorizontalButton(
                label: 'Continue',
                color: kBlackGradient,
                onPressed: () {
                  closeKeyboard(context);
                },
                textColor: kWhite,
                boxShadow: true,
                border: false,
                imageON: false,
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
