import 'package:event_app/presentaions/controllers/base_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dashBoardControllerProvider = ChangeNotifierProvider<DashBoardController>(
  (ref) => DashBoardController(),
);

class DashBoardController extends BaseChangeNotifier {
  int page = 0;

  void resetPage() {
    page = 0;
    notifyListeners();
  }

  void switchPage(int index) {
    page = index;
    notifyListeners();
  }
}
