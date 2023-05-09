import 'package:evira_mark_2/Constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class DropdownExpansionTile extends StatefulWidget {
  final String title;
  final List<String> options;
  final String? selectedOption;
  final ValueChanged<String>? onChanged;

  const DropdownExpansionTile({
    Key? key,
    required this.title,
    required this.options,
    this.selectedOption,
    this.onChanged,
  }) : super(key: key);

  @override
  _DropdownExpansionTileState createState() => _DropdownExpansionTileState();
}

class _DropdownExpansionTileState extends State<DropdownExpansionTile> {
  late String _selectedOption = widget.selectedOption ?? '';
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: kBorderColor,
          width: 1.5,
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            _selectedOption.isEmpty ? widget.title : _selectedOption,
            style: TextStyle(
              fontFamily: 'Outfit',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          trailing: Icon(
            IconlyLight.arrow_down_2,
            size: 24,
            color: Colors.black,
          ),
          onExpansionChanged: (isExpanded) {
            setState(() {
              _isExpanded = isExpanded;
            });
          },
          children: [
            Container(
              height: 100.h,
              child: ListView(
                children: widget.options.map((option) {
                  return ListTile(
                    title: Text(
                      option,
                      style: kInputBoxText,
                    ),
                    onTap: () {
                      setState(() {
                        _selectedOption = option;
                        _isExpanded = false;
                      });
                      widget.onChanged?.call(option); // Call onChanged callback with selected option
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
