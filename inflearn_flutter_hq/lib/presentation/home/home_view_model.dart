import 'package:flutter/material.dart';
import 'package:inflearn_flutter_hq/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  HomeState _state = HomeState();

  HomeState get state => _state;
}
