import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/big_button.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/input_field.dart';
import 'package:inflearn_flutter_hq/ui/color_styles.dart';
import 'package:inflearn_flutter_hq/ui/text_styles.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback onSignIn;

  const SignUpScreen({super.key, required this.onSignIn});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Create an account,',
                  style: TextStyles.largeTextBold,
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Let’s help you set up your account, it won’t take long.',
                    style: TextStyles.smallerTextRegular,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InputField(label: 'Name', placeHolder: 'Enter Name'),
                SizedBox(
                  height: 20,
                ),
                InputField(label: 'Email', placeHolder: 'Enter Email'),
                SizedBox(height: 20),
                InputField(
                    label: 'Enter Password', placeHolder: 'Enter Password'),
                SizedBox(height: 20),
                InputField(
                    label: 'Confirm Password', placeHolder: 'Retype Password'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                      side: BorderSide(color: ColorStyles.secondary100),
                      activeColor: ColorStyles.secondary100,
                      checkColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Text(
                      'Accept terms & Conditions',
                      style: TextStyles.smallerTextRegular
                          .copyWith(color: ColorStyles.secondary100),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                BigButton('Sign Up', onPressed: () {}),
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
                      'Already a member? ',
                      style: TextStyles.smallerTextBold,
                    ),
                    GestureDetector(
                      onTap: widget.onSignIn,
                      child: Text(
                        'Sign In',
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
      ),
    );
  }
}
