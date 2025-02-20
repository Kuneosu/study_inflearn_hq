import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inflearn_flutter_hq/domain/model/recipe.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
     @Default([]) List<Recipe> recipes,
    @Default(false) bool isLoading,
  }) = _HomeState;
  
}