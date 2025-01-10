import 'package:inflearn_flutter_hq/domain/model/recipe.dart';

class SavedRecipesState {
  List<Recipe> recipes;
  final bool isLoading;

  SavedRecipesState({
    this.recipes = const [],
    this.isLoading = false,
  });

  SavedRecipesState copyWith({
    List<Recipe>? recipes,
    bool? isLoading,
  }) {
    return SavedRecipesState(
      recipes: recipes ?? this.recipes,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
