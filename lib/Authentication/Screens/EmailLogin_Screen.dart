import 'package:evira_mark_2/Authentication/Components/Bottoms_opt.dart';
import 'package:evira_mark_2/Authentication/Components/TextLink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../Components/Buttons.dart';
import '../Components/Headings.dart';
import '../Components/InputBox.dart';
import '../Components/TopBar.dart';
import '../../Constraints.dart';

class EmailLogin_Screen extends StatefulWidget {
  EmailLogin_Screen({super.key});

  @override
  State<EmailLogin_Screen> createState() => _EmailLogin_ScreenState();
}

class _EmailLogin_ScreenState extends State<EmailLogin_Screen> {
  String Email = "";
  String Password = "";

  void closeKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 24, bottom: 0, left: 24, right: 24),
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
                firstText: 'Login',
                secondText:
                    'Enter your email-id and password to log \nin to your account',
                space: 10,
                firstTextStyle: kH1,
                secondTextStyle: kP,
                firstTextAlign: TextAlign.left,
                secondTextAlign: TextAlign.left,
                firstTextColor: kBlack,
                secondTextColor: kTextLightBlack,
                columnAlignment: CrossAxisAlignment.start,
              ),
              SizedBox(
                height: 24.h,
              ),
              Input_Box(
                placeholder: 'Email Address',
                iconData: IconlyLight.message,
                changeIconData: IconlyBold.message,
                keyboardType: TextInputType.text,
                controller: EmailController,
              ),
              SizedBox(
                height: 14.h,
              ),
              Input_Box(
                placeholder: 'Password',
                iconData: IconlyLight.password,
                changeIconData: IconlyBold.password,
                keyboardType: TextInputType.text,
                controller: PasswordController,
              ),
              Spacer(),
              TextLink(
                Light_label: 'Forgot Password ?',
                Dark_label: ' Verify',
                onPressed: () {},
              ),
              SizedBox(
                height: 24.h,
              ),
              HorizontalButton(
                label: 'Continue',
                color: kBlackGradient,
                onPressed: () {
                  setState(() {
                    Email = EmailController.text;
                    Password = PasswordController.text;
                  });
                  print('Email: $Email');
                  print('Password: $Password');
                  closeKeyboard(context);
                  //Navigator.push
                },
                textColor: kWhite,
                boxShadow: true,
                border: false,
                imageON: false,
              ),
              SizedBox(height: 24.h),
              Bottoms_Opt(),
            ],
          ),
        ),
      ),
    );
  }
}
