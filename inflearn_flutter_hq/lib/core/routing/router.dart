import 'package:go_router/go_router.dart';
import 'package:inflearn_flutter_hq/core/routing/route_paths.dart';
import 'package:inflearn_flutter_hq/presentation/home/home_screen.dart';
import 'package:inflearn_flutter_hq/presentation/main/main_screen.dart';
import 'package:inflearn_flutter_hq/presentation/notifications/notifications_screen.dart';
import 'package:inflearn_flutter_hq/presentation/profile/profile_screen.dart';
import 'package:inflearn_flutter_hq/presentation/saved_recipes/screen/saved_recipes_root.dart';
import 'package:inflearn_flutter_hq/presentation/sign_in/sign_in_screen.dart';
import 'package:inflearn_flutter_hq/presentation/sign_up/sing_up_screen.dart';
import 'package:inflearn_flutter_hq/presentation/splash/splash_screen.dart';

final router = GoRouter(
  initialLocation: RoutePaths.splash,
  routes: [
    GoRoute(
      path: RoutePaths.splash,
      builder: (context, state) => SplashScreen(
        onStartCooking: () => context.go(RoutePaths.signIn),
      ),
    ),
    GoRoute(
      path: RoutePaths.signIn,
      builder: (context, state) => SignInScreen(
        onSignUp: () => context.go(RoutePaths.signUp),
        onSignIn: () => context.go(RoutePaths.home),
      ),
    ),
    GoRoute(
      path: RoutePaths.signUp,
      builder: (context, state) => SignUpScreen(
        onSignIn: () => context.go(RoutePaths.signIn),
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScreen(
          body: navigationShell,
          currentPageIndex: navigationShell.currentIndex,
          onChangeIndex: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.home,
              builder: (context, state) => HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.savedRecipes,
              builder: (context, state) => SavedRecipesRoot(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.notifications,
              builder: (context, state) => NotificationsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.profile,
              builder: (context, state) => ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
