// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:event_app/data/services/error_service.dart';
import 'package:event_app/data/services/group_service.dart';
import 'package:event_app/presentaions/controllers/base_controller.dart';
import 'package:event_app/presentaions/model/group_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/constants/constants.dart';

final groupControllerProvider = ChangeNotifierProvider<GroupController>(
  (ref) {
    return GroupController();
  },
);

class GroupController extends BaseChangeNotifier {
  final _groupService = GroupService();
  List<Group> groups = [];

  getMyGroup() async {
    loadingState = LoadingState.loading;
    try {
      final res = await _groupService.fetchUserGroup(
        id: 'erhiogererieker',
      );

      if (res.statusCode == 200) {
        final data = groupModelFromJson(res.data);
        groups = data.data ?? [];
        log('groups: $groups');
        notifyListeners();
        loadingState = LoadingState.idle;
        return true;
      }
    } on DioError catch (e) {
      loadingState = LoadingState.error;
      ErrorService.handleErrors(e);
    } catch (e) {
      loadingState = LoadingState.error;
      ErrorService.handleErrors(e);
    }
    return false;
  }
}
