import 'package:event_app/presentaions/controllers/base_controller.dart';
import 'package:event_app/presentaions/view/myGroupdetails/my_group_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final groupCardControllerProvider = ChangeNotifierProvider<GroupCardController>(
  (ref) => GroupCardController(),
);

class GroupCardController extends BaseChangeNotifier {
  late int groupEventIndex;

  int get getGroupEventIndex => groupEventIndex;

  void storeGroupEventIndex(int index) {
    groupEventIndex = index;
    notifyListeners();
  }

  bool findItemById(MyGroupCard item, String id) {
    return item.date == id;
  }
}
