import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/medium_button.dart';
import 'package:inflearn_flutter_hq/ui/color_styles.dart';
import 'package:inflearn_flutter_hq/ui/text_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/splash_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(height: 104),
              Image.asset(
                'assets/images/chef_cap.png',
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                '100K+ Premium Recipe',
                style: TextStyles.mediumTextBold.copyWith(
                  color: ColorStyles.white,
                ),
              ),
              Spacer(),
              SizedBox(
                width: 213,
                child: Text(
                  'Get Cooking',
                  style: TextStyles.headerTextBold.copyWith(
                    fontSize: 48,
                    color: ColorStyles.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Simple way to find Tasty Recipe',
                style: TextStyles.normalTextRegular.copyWith(
                  color: ColorStyles.white,
                ),
              ),
              SizedBox(height: 64),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 66),
                child: MediumButton(
                  'Start Cooking',
                  onPressed: () {
                    context.go('/SignIn');
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
