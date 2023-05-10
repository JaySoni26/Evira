import 'package:evira_mark_2/Components/Dropdown.dart';
import 'package:evira_mark_2/Components/Headings.dart';
import 'package:evira_mark_2/Constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import '../Components/Buttons.dart';
import '../Components/InputBox.dart';
import '../Components/TopBar.dart';

//Store all the written data in the variable created below and print them in terminal as well

class ProfileSetup_Screen extends StatefulWidget {
  const ProfileSetup_Screen({super.key});

  @override
  State<ProfileSetup_Screen> createState() => _ProfileSetup_ScreenState();
}

class _ProfileSetup_ScreenState extends State<ProfileSetup_Screen> {
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String phoneNumber = '';
  String fullName = '';
  String dob = '';
  String email = '';
  String gender = '';
  bool areAllFieldsFilledIn = false;

  @override
  void checkFields() {
    setState(() {
      areAllFieldsFilledIn = fullName.isNotEmpty &&
          dob.isNotEmpty &&
          email.isNotEmpty &&
          phoneNumber.isNotEmpty;
    });
  }

  void closeKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 24, bottom: 0, left: 24, right: 24),
          child: SingleChildScrollView(
            reverse: true,
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
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  height: 100.h,
                  width: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.h),
                    border: Border.all(color: kBorderColor, width: 1.5),
                  ),
                  child: IconButton(
                    icon: Icon(
                      IconlyLight.camera,
                      size: 32.h,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Input_Box(
                  placeholder: 'Full Name',
                  iconData: IconlyLight.profile,
                  changeIconData: IconlyBold.profile,
                  keyboardType: TextInputType.text,
                  controller: fullNameController,
                ),
                SizedBox(
                  height: 14.h,
                ),
                Input_Box(
                  placeholder: 'DOB',
                  iconData: IconlyLight.calendar,
                  changeIconData: IconlyBold.calendar,
                  keyboardType: TextInputType.datetime,
                  controller: dobController,
                ),
                SizedBox(
                  height: 14.h,
                ),
                Input_Box(
                  placeholder: 'Email',
                  iconData: IconlyLight.message,
                  changeIconData: IconlyBold.message,
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                ),
                SizedBox(
                  height: 14.h,
                ),
                Input_Box(
                  placeholder: 'Phone Number',
                  iconData: IconlyLight.call,
                  changeIconData: IconlyBold.call,
                  keyboardType: TextInputType.number,
                  controller: phoneNumberController,
                ),
                SizedBox(
                  height: 14,
                ),
                DropdownExpansionTile(
                  title: 'Gender',
                  options: ['Male', 'Female', 'Others'],
                  selectedOption: gender,
                  onChanged: (option) {
                    setState(() {
                      gender = option;
                    });
                  },
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
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
          onPressed: () {
            setState(() {
              phoneNumber = phoneNumberController.text;
              email = emailController.text;
              fullName = fullNameController.text;
              dob = dobController.text;
            });
            print('Full Name: $fullName');
            print('Date of Birth: $dob');
            print('Email: $email');
            print('Phone number: $phoneNumber');
            print('Gender: $gender');
            closeKeyboard(context);
            //Navigator Function
          },
          textColor: kWhite,
          boxShadow: true,
          border: false,
          imageON: false,
        ),
      ),
    );
  }
}
