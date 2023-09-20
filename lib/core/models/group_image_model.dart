import 'package:json_annotation/json_annotation.dart';

part 'group_image_model.g.dart';

@JsonSerializable()
class GroupImageModel {
  final String groupId;
  final String imageId;

  GroupImageModel({
    required this.groupId,
    required this.imageId,
  });

  factory GroupImageModel.fromJson(Map<String, dynamic> json) =>
      _$GroupImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$GroupImageModelToJson(this);
}
