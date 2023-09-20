import 'package:json_annotation/json_annotation.dart';

part 'interested_event_model.g.dart';

@JsonSerializable()
class InterestedEventModel {
  final String eventId;
  final String userId;

  InterestedEventModel({
    required this.eventId,
    required this.userId,
  });

  factory InterestedEventModel.fromJson(Map<String, dynamic> json) =>
      _$InterestedEventModelFromJson(json);

  Map<String, dynamic> toJson() => _$InterestedEventModelToJson(this);
}
