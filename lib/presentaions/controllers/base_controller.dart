import 'package:event_app/core/constants/enum.dart';
import 'package:flutter/material.dart';

class BaseChangeNotifier extends ChangeNotifier {
  BaseChangeNotifier();

  LoadingState _loadingState = LoadingState.idle;
  LoadingState get loadingState => _loadingState;
  set loadingState(LoadingState state) {
    _loadingState = state;
    notifyListeners();
  }

  // Other methods and properties can remain as needed for your application.
}
