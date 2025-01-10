import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:inflearn_flutter_hq/core/routing/route_paths.dart';
import 'package:inflearn_flutter_hq/data/repository/mock_bookmark_repository_impl.dart';
import 'package:inflearn_flutter_hq/data/repository/mock_recipe_repository_impl.dart';
import 'package:inflearn_flutter_hq/domain/model/recipe.dart';
import 'package:inflearn_flutter_hq/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:inflearn_flutter_hq/presentation/saved_recipes/saved_recipes_screen.dart';
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
      builder: (context, state) => FutureBuilder<List<Recipe>>(
          future: GetSavedRecipesUseCase(
            recipeRepository: MockRecipeRepositoryImpl(),
            bookmarkRepository: MockBookmarkRepositoryImpl(),
          ).execute(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            final recipes = snapshot.data!;
            return SavedRecipesScreen(
              recipes: recipes,
            );
          }),
    )
  ],
);
