import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/big_button.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/input_field.dart';
import 'package:inflearn_flutter_hq/ui/color_styles.dart';
import 'package:inflearn_flutter_hq/ui/text_styles.dart';

class SignInScreen extends StatelessWidget {
  final VoidCallback onSignUp;
  final VoidCallback onSignIn;

  const SignInScreen({super.key, required this.onSignUp, required this.onSignIn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Hello,',
                style: TextStyles.headerTextBold,
              ),
              Text(
                'Welcome Back!',
                style: TextStyles.largeTextRegular,
              ),
              SizedBox(
                height: 57,
              ),
              InputField(label: 'Email', placeHolder: 'Enter Email'),
              SizedBox(
                height: 30,
              ),
              InputField(
                  label: 'Enter Password', placeHolder: 'Enter Password'),
              SizedBox(height: 20),
              Text(
                'Forgot Password?',
                style: TextStyles.smallerTextRegular.copyWith(
                  color: ColorStyles.secondary100,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              BigButton('Sign In', onPressed: onSignIn),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                  SizedBox(width: 7),
                  Text(
                    'Or Sign in With',
                    style: TextStyles.smallerTextBold.copyWith(
                      color: ColorStyles.gray4,
                    ),
                  ),
                  SizedBox(width: 7),
                  Container(
                    width: 50,
                    height: 1,
                    color: ColorStyles.gray4,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google_button.png',
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(width: 15),
                  Image.asset(
                    'assets/images/facebook_button.png',
                    width: 60,
                    height: 60,
                  ),
                ],
              ),
              const SizedBox(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyles.smallerTextBold,
                  ),
                  GestureDetector(
                    onTap: onSignUp,
                    child: Text(
                      'Sign Up',
                      style: TextStyles.smallerTextBold.copyWith(
                        color: ColorStyles.secondary100,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
