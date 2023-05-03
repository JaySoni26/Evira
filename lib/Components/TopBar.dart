import 'package:evira_mark_2/Constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBar extends StatelessWidget {
  final IconData icon;
  final IconData? secondaryIcon;
  final String? label;
  final bool labelOn;
  final bool secondaryIconOn;
  final Function() onPressedIcon;
  final Function()? onPressedSecondaryIcon;

  const TopBar({
    Key? key,
    required this.icon,
    this.secondaryIcon,
    this.label,
    required this.labelOn,
    required this.secondaryIconOn,
    required this.onPressedIcon,
    this.onPressedSecondaryIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: onPressedIcon,
            child: Icon(
              icon,
              size: 24.h,
            ),
          ),
          SizedBox(
            width: 14,
          ),
          if (labelOn)
            Text(
              label!,
              style: kAppBarHeading,
            ),
          Spacer(),
          if (secondaryIconOn)
            SizedBox(
              height: 24.h,
              width: 24.w,
              child: InkWell(
                onTap: onPressedSecondaryIcon,
                child: Icon(secondaryIcon),
              ),
            ),
        ],
      ),
    );
  }
}
