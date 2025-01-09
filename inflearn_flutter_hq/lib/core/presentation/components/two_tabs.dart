import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/ui/color_styles.dart';
import 'package:inflearn_flutter_hq/ui/text_styles.dart';

class TwoTabs extends StatelessWidget {
  final List<String> labels;
  final int selectedIndex;
  final void Function(int index) onChange;

  const TwoTabs({
    super.key,
    required this.labels,
    this.selectedIndex = 0,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChange(0);
            },
            child: selectedIndex == 0
                ? _SelectedTab(
                    text: labels[0],
                  )
                : _UnselectedTab(
                    text: labels[0],
                  ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onChange(1);
            },
            child: selectedIndex == 1
                ? _SelectedTab(
                    text: labels[1],
                  )
                : _UnselectedTab(
                    text: labels[1],
                  
            ),
          ),
        ),
      ],
    );
  }
}

class _SelectedTab extends StatelessWidget {
  final String text;

  const _SelectedTab({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      decoration: BoxDecoration(
        color: ColorStyles.primary100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyles.smallerTextBold.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _UnselectedTab extends StatelessWidget {
  final String text;

  const _UnselectedTab({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      decoration: BoxDecoration(
        color: ColorStyles.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyles.smallerTextBold.copyWith(
              color: ColorStyles.primary80,
            ),
          ),
        ],
      ),
    );
  }
}
