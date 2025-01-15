import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/search_input_field.dart';
import 'package:inflearn_flutter_hq/ui/color_styles.dart';
import 'package:inflearn_flutter_hq/ui/text_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search Recipes',
          style: TextStyles.mediumTextBold,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Expanded(
                  child: SearchInputField(
                    placeHolder: 'Search recipes',
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
            SizedBox(height: 20),
            Text(
              'Recent Search',
              style: TextStyles.normalTextBold,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Text('$index');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
