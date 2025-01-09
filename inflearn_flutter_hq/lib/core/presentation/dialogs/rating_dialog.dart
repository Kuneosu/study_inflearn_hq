import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/small_button.dart';
import 'package:inflearn_flutter_hq/ui/color_styles.dart';
import 'package:inflearn_flutter_hq/ui/text_styles.dart';

class RatingDialog extends StatefulWidget {
  final String title;
  final int rate;
  final String buttonText;
  final void Function(int score) onChange;

  const RatingDialog({
    super.key,
    required this.title,
    required this.rate,
    required this.buttonText,
    required this.onChange,
  });

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.title,
        style: TextStyles.smallTextRegular,
      ),
      content: RatingBar(
        value: _value,
        onChange: (int value) {
          setState(
            () {
              _value = value;
            },
          );
        },
      ),
      actions: [
        SmallButton(
          widget.buttonText,
          onPressed: () {
            widget.onChange(_value);
          },
          color: ColorStyles.rating,
          fontSize: 11,
        )
      ],
    );
  }
}

class RatingBar extends StatelessWidget {
  final int value;
  final void Function(int value) onChange;
  const RatingBar({
    super.key,
    required this.value,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTapDown: (_) {
            onChange(index + 1);
          },
          child: Icon(
            value >= index + 1 ? Icons.star : Icons.star_border_outlined,
            size: 30,
            color: ColorStyles.rating,
          ),
        );
      }),
    );
  }
}
