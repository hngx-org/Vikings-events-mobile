import 'package:json_annotation/json_annotation.dart';

part 'group_event_model.g.dart';

@JsonSerializable()
class GroupEventModel {
  final String groupId;
  final String eventId;

  GroupEventModel({
    required this.groupId,
    required this.eventId,
  });

  factory GroupEventModel.fromJson(Map<String, dynamic> json) =>
      _$GroupEventModelFromJson(json);

  Map<String, dynamic> toJson() => _$GroupEventModelToJson(this);
}
