import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/ui/color_styles.dart';
import 'package:inflearn_flutter_hq/ui/text_styles.dart';

class BigButton extends StatefulWidget {
  final String text;
  final void Function() onPressed;
  const BigButton(
    this.text, {
    super.key,
    required this.onPressed,
  });

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: isPressed ? ColorStyles.gray4 : ColorStyles.primary100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 114,
              child: Text(
                widget.text,
                style: TextStyles.normalTextBold.copyWith(color: Colors.white),
              ),
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
