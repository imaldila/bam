import 'package:flutter/material.dart';

enum HomeState { normal }

class HomeController extends ChangeNotifier {
  HomeState homeState = HomeState.normal;

  void changeHomeState(HomeState state) {
    homeState = state;
    notifyListeners();
  }
}