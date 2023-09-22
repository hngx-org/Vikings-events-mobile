import 'package:event_app/presentaions/controllers/base_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashBoardControllerProvider = ChangeNotifierProvider<DashBoardController>(
  (ref) => DashBoardController(),
);

class DashBoardController extends BaseChangeNotifier {
  int page = 0;

  void switchPage(int index) {
    page = index;
    notifyListeners();
  }
}
