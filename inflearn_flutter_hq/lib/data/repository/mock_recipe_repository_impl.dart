import 'package:inflearn_flutter_hq/domain/data_source/recipe_data_source.dart';
import 'package:inflearn_flutter_hq/domain/model/recipe.dart';
import 'package:inflearn_flutter_hq/domain/repository/recipe_repository.dart';

class MockRecipeRepositoryImpl implements RecipeRepository {
  final RecipeDataSource _recipeDataSource;

  MockRecipeRepositoryImpl({required RecipeDataSource recipeDataSource})
      : _recipeDataSource = recipeDataSource;

  @override
  Future<Recipe?> getRecipe(int id) async {
    final recipes = await getRecipes();
    return recipes.where((e) => e.id == id).firstOrNull;
  }

  @override
  Future<List<Recipe>> getRecipes() async {
    final recipes = await _recipeDataSource.getRecipes();
    return recipes.map((e) => Recipe.fromJson(e)).toList();
  }
}
