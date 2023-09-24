// import 'package:event_app/presentaions/controllers/base_controller.dart';
// import 'package:event_app/presentaions/view/my_group/widgets/create_group_view.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// final myGroupControllerProvider = ChangeNotifierProvider<MyGroupController>(
//   (ref) => MyGroupController(),
// );

// class MyGroupController extends BaseChangeNotifier {
//   late String groupName;

//   String get createdGroupName => groupName;

//   //to get group name when creating a group
//   void holdGroupName(String groupName) {
//     try {
//       groupName = groupName;
//       debugPrint('Group Name: $groupName');
//     } catch (e) {
//       debugPrint('Error: $e');
//     }
//     notifyListeners();
//   }

//   //navigating to the create group screen just because I CAN!
//   void createGroup(context) {
//     try {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (_) {
//           return const CreateGroupView();
//         }),
//       );
//       debugPrint('Successful: Creating your group');
//     } catch (e) {
//       debugPrint('Error: $e');
//     }
//     notifyListeners();
//   }
// }
