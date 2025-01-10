import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/big_button.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/filter_button.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/input_field.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/medium_button.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/rating_button.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/small_button.dart';
import 'package:inflearn_flutter_hq/core/presentation/components/two_tabs.dart';
import 'package:inflearn_flutter_hq/core/presentation/dialogs/rating_dialog.dart';
import 'package:inflearn_flutter_hq/presentation/sign_in/sign_in_screen.dart';
import 'package:inflearn_flutter_hq/ui/text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Components",
          style: TextStyles.largeTextBold,
        ),
      ),
      body: SignInScreen(),
    );
  }
}
