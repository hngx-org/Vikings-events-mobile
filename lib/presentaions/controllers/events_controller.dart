// ignore_for_file: deprecated_member_use

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:event_app/data/services/error_service.dart';
import 'package:event_app/data/services/events_service.dart';
import 'package:event_app/presentaions/controllers/base_controller.dart';
import 'package:event_app/presentaions/controllers/dashboard_controller.dart';
import 'package:event_app/presentaions/model/group_model.dart';
import 'package:event_app/presentaions/model/home_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/constants/constants.dart';

final eventsControllerProvider = ChangeNotifierProvider<EventsController>(
  (ref) {
    return EventsController();
  },
);

class EventsController extends BaseChangeNotifier {
  final _eventService = EventService();
  List<Events> groups = [];

  getEvents() async {
    loadingState = LoadingState.loading;
    // final id = await DashBoardController().getId();

    try {
      final res = await _eventService.fetchEvents();

      if (res.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(res.data);

// Access the "events" property
        Map<String, dynamic> events = data['events'];

// Now you can access the "upcomingEvents" property
        List<dynamic> upcomingEvents = events['upcomingEvents'];

        notifyListeners();
        loadingState = LoadingState.idle;
        return upcomingEvents;
      }
    } on DioError catch (e) {
      // print(e);
      loadingState = LoadingState.error;
      ErrorService.handleErrors(e);
    } catch (e) {
      // print("error");
      loadingState = LoadingState.error;
      ErrorService.handleErrors(e);
    }
    return false;
  }
}
