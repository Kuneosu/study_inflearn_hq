import 'package:go_router/go_router.dart';
import 'package:inflearn_flutter_hq/core/routing/route_paths.dart';
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
        onSignIn: () => context.go(RoutePaths.savedRecipes),
      ),
    ),
    GoRoute(
      path: RoutePaths.signUp,
      builder: (context, state) => SignUpScreen(
        onSignIn: () => context.go(RoutePaths.signIn),
      ),
    ),
    GoRoute(
      path: RoutePaths.savedRecipes,
      builder: (context, state) => SavedRecipesRoot(),
    )
  ],
);
