import 'package:evira_mark_2/Authentication/Components/Bottoms_opt.dart';
import 'package:evira_mark_2/Authentication/Screens/OtpVerification_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';

import '../Components/Buttons.dart';
import '../Components/Divider.dart';
import '../Components/Headings.dart';
import '../Components/InputBox.dart';
import '../Components/TextLink.dart';
import '../Components/TopBar.dart';
import '../../Constraints.dart';

class PhoneNumberLogin_Screen extends StatefulWidget {
  const PhoneNumberLogin_Screen({super.key});

  @override
  State<PhoneNumberLogin_Screen> createState() =>
      _PhoneNumberLogin_ScreenState();
}

class _PhoneNumberLogin_ScreenState extends State<PhoneNumberLogin_Screen> {
  String phoneNumber = '';

  void closeKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  @override
  void initState() {
    super.initState();
    //phoneNumberController = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 0),
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
                firstText: 'Phone Number',
                secondText:
                    'Be the first to know about new products, \nevents, and more.',
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
                placeholder: 'Phone Number',
                iconData: IconlyLight.call,
                changeIconData: IconlyBold.call,
                keyboardType: TextInputType.number,
                controller: phoneNumberController,
              ),
              Spacer(),
              
              HorizontalButton(
                label: 'Continue',
                color: kBlackGradient,
                onPressed: () {
                  setState(() {
                    phoneNumber = phoneNumberController.text;
                  });
                  print('Phone number: $phoneNumber');
                  closeKeyboard(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OtpVerification_Screen(
                              PhoneNumber: phoneNumber,
                            )),
                  );
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
