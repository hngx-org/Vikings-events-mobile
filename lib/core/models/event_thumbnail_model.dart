import 'package:json_annotation/json_annotation.dart';

part 'event_thumbnail_model.g.dart';

@JsonSerializable()
class EventThumbnailModel {
  final String eventId;
  final String imageId;

  EventThumbnailModel({
    required this.eventId,
    required this.imageId,
  });

  factory EventThumbnailModel.fromJson(Map<String, dynamic> json) =>
      _$EventThumbnailModelFromJson(json);

  Map<String, dynamic> toJson() => _$EventThumbnailModelToJson(this);
}
