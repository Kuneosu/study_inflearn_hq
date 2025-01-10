import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/search_input_field.dart';
import 'package:inflearn_flutter_hq/ui/color_styles.dart';
import 'package:inflearn_flutter_hq/ui/text_styles.dart';

class HomeScreen extends StatelessWidget {
  final String name;
  final VoidCallback onSearchTap;

  const HomeScreen({
    super.key,
    required this.name,
    required this.onSearchTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello $name',
                      style: TextStyles.largeTextBold,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'What are you cooking today?',
                      style: TextStyles.smallerTextRegular.copyWith(
                        color: ColorStyles.gray3,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: ColorStyles.secondary40,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Image.asset(
                    'assets/images/profile.png',
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: onSearchTap,
                    child: IgnorePointer(
                      child: SearchInputField(
                        placeHolder: 'Search recipes',
                        readOnly: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: ColorStyles.primary100,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(
                    Icons.tune,
                    color: ColorStyles.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
