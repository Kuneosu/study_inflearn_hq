import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/data/data_source/remote/remote_recipe_data_source_impl.dart';
import 'package:inflearn_flutter_hq/data/repository/mock_bookmark_repository_impl.dart';
import 'package:inflearn_flutter_hq/data/repository/mock_recipe_repository_impl.dart';
import 'package:inflearn_flutter_hq/domain/use_case/get_saved_recipes_use_case.dart';
import 'package:inflearn_flutter_hq/presentation/saved_recipes/saved_recipes_view_model.dart';
import 'package:inflearn_flutter_hq/presentation/saved_recipes/screen/saved_recipes_screen.dart';

final _getSavedRecipesUseCase = GetSavedRecipesUseCase(
  bookmarkRepository: MockBookmarkRepositoryImpl(),
  recipeRepository: MockRecipeRepositoryImpl(
    recipeDataSource: RemoteRecipeDataSourceImpl(),
  ),
);

class SavedRecipesRoot extends StatelessWidget {
  const SavedRecipesRoot({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = SavedRecipesViewModel(
      getSavedRecipesUseCase: _getSavedRecipesUseCase,
    );

    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) {
        final state = viewModel.state;
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return SavedRecipesScreen(recipes: state.recipes);
      },
    );
  }
}
