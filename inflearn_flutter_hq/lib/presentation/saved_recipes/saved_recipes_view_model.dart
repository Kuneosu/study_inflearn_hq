import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/domain/model/recipe.dart';
import 'package:inflearn_flutter_hq/domain/use_case/get_saved_recipes_use_case.dart';

class SavedRecipesViewModel with ChangeNotifier {
  final GetSavedRecipesUseCase _getSavedRecipesUseCase;

  List<Recipe> _recipes = [];

  List<Recipe> get recipes => List.unmodifiable(_recipes);

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  SavedRecipesViewModel(
      {required GetSavedRecipesUseCase getSavedRecipesUseCase})
      : _getSavedRecipesUseCase = getSavedRecipesUseCase {
    _loadRecipes();
  }

  void _loadRecipes() async {
    _isLoading = true;
    notifyListeners();

    _recipes = await _getSavedRecipesUseCase.execute();
    _isLoading = false;
    notifyListeners();
  }
}
