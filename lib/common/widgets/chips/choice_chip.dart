import 'package:flutter/material.dart';
import 'package:up_store/common/widgets/custom_shapes/circular_container.dart';
import 'package:up_store/utils/constants/colors.dart';
import 'package:up_store/utils/constants/helpers/helper_function.dart';

class UChoiceChip extends StatelessWidget {
  const UChoiceChip({
    super.key,
    required this.text,
    this.selected = false,
    required this.onSelected,
  });

  final String text;
  final bool selected;
  final Function(bool?) onSelected;

  @override
  Widget build(BuildContext context) {
    bool isColor = UHelperFunction.getColor(text) != null;
    
    return ChoiceChip(
      label: isColor ? SizedBox() : Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? UColors.white : null),
      shape: isColor ? CircleBorder() : null,
      padding: isColor ? EdgeInsets.zero : null,
      labelPadding: isColor ? EdgeInsets.zero : null,
      avatar: isColor ? UCircularContainer(width: 50, height: 50, backgroundColor: UHelperFunction.getColor(text)!) : null,
      backgroundColor: isColor ? UHelperFunction.getColor(text) : null,
    );
  }
}
