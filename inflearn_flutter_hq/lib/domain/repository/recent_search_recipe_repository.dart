import 'package:inflearn_flutter_hq/domain/model/recipe.dart';

abstract class RecentSearchRecipeRepository {
  Future<List<Recipe>> getRecentSearchRecipes();

  Future<void> updateRecentSearchRecipes(List<Recipe> recipes);
}