import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inflearn_flutter_hq/core/routing/route_paths.dart';
import 'package:inflearn_flutter_hq/presentation/home/home_screen.dart';

class HomeRoot extends StatelessWidget {
  const HomeRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      name: 'Jega',
      onSearchTap: () {
        context.push(RoutePaths.search);
      },
    );
  }
}
