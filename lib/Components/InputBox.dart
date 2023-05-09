import 'package:evira_mark_2/Constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class Input_Box extends StatefulWidget {
  final String placeholder;
  final IconData iconData;
  final IconData changeIconData;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  const Input_Box({
    Key? key, // added Key? key parameter
    required this.placeholder,
    required this.iconData,
    required this.changeIconData,
    this.controller,
    required this.keyboardType,
  }) : super(key: key); // added super constructor with key parameter

  @override
  State<Input_Box> createState() => _Input_BoxState();
}

class _Input_BoxState extends State<Input_Box> {
  bool _isFocused = false;
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = widget.controller ??
        TextEditingController(); // added widget.controller initialization
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      keyboardType: widget.keyboardType, // added keyboardType parameter
      style: kInputBoxText,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.h),
          borderSide: BorderSide(
            color: kBlack,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.h),
          borderSide: BorderSide(
            color: kBlack.withOpacity(0.15),
            width: 1.5,
          ),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Icon(
            _isFocused
                ? widget.changeIconData
                : widget
                    .iconData, // added iconData and changeIconData parameters
            size: 24.h,
            color: kBlack,
          ),
        ),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _textEditingController.text.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _textEditingController.clear();
                          _isFocused = false;
                          FocusScope.of(context).unfocus();
                        });
                      },
                      icon: Icon(
                        IconlyLight.close_square,
                        size: 24.h,
                        color: kBlack,
                      ),
                    ),
                  )
                : SizedBox(),
            _textEditingController.text.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isFocused = false;
                          FocusScope.of(context).unfocus();
                          // Perform action when save icon is pressed
                        });
                      },
                      child: Icon(
                        IconlyLight.tick_square,
                        size: 24.h,
                        color: kBlack,
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
        hintText: widget.placeholder, // added placeholder parameter
        hintStyle: kInputBoxText.copyWith(color: kTextLightBlack),
      ),
      onChanged: (value) {
        setState(() {
          _isFocused = value.isNotEmpty;
        });
      },
      onTap: () {
        setState(() {
          _isFocused = true;
        });
      },
      onEditingComplete: () {
        setState(() {
          _isFocused = false;
        });
      },
      onSubmitted: (String value) {
        setState(() {
          _isFocused = false;
        });
      },
    );
  }
}
