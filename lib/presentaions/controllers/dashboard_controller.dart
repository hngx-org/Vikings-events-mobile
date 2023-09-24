import 'package:event_app/data/local/local.dart';
import 'package:event_app/presentaions/controllers/base_controller.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dashBoardControllerProvider = ChangeNotifierProvider<DashBoardController>(
  (ref) => DashBoardController(),
);

final SecureStorageService secureStorageService =
    SecureStorageService(secureStorage: const FlutterSecureStorage());

class DashBoardController extends BaseChangeNotifier {
  int page = 0;

  Future<String> getName() async {
    String? name = await secureStorageService.read(key: "name");
    List<String> part = name.toString().split(" ");
    name = part[0];
    return name;
  }

  Future<String> getImage() async {
    String? picture = await secureStorageService.read(key: "picture");
    return picture as String;
  }

  Future<String> getEmail() async {
    String? email = await secureStorageService.read(key: "email");
    return email as String;
  }

  void resetPage() {
    page = 0;
    notifyListeners();
  }

  void switchPage(int index) {
    page = index;
    notifyListeners();
  }
}
