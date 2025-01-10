import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:inflearn_flutter_hq/presentation/saved_recipes/saved_recipes_state.dart';

class SavedRecipesViewModel with ChangeNotifier {
  final GetSavedRecipesUseCase _getSavedRecipesUseCase;

  SavedRecipesState _state = SavedRecipesState();

  SavedRecipesState get state => _state;
  
  SavedRecipesViewModel(
      {required GetSavedRecipesUseCase getSavedRecipesUseCase})
      : _getSavedRecipesUseCase = getSavedRecipesUseCase {
    _loadRecipes();
  }

  void _loadRecipes() async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    _state = _state.copyWith(
      recipes: await _getSavedRecipesUseCase.execute(),
      isLoading: false,
    );
    notifyListeners();
  }
}
