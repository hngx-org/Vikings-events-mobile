// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interested_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterestedEventModel _$InterestedEventModelFromJson(
        Map<String, dynamic> json) =>
    InterestedEventModel(
      eventId: json['eventId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$InterestedEventModelToJson(
        InterestedEventModel instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'userId': instance.userId,
    };
