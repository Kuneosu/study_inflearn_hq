import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/ui/color_styles.dart';
import 'package:inflearn_flutter_hq/ui/text_styles.dart';

class RatingButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  const RatingButton(
    this.text, {
    super.key,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: isSelected ? ColorStyles.primary100 : ColorStyles.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      side: const BorderSide(
        color: ColorStyles.primary100,
      ),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyles.smallerTextRegular.copyWith(
              color: isSelected ? ColorStyles.white : ColorStyles.primary80,
            ),
          ),
          SizedBox(
            width: 0.5,
          ),
          Icon(
            Icons.star,
            size: 18,
            color: isSelected ? ColorStyles.white : ColorStyles.primary100,
          )
        ],
      ),
    );
  }
}
