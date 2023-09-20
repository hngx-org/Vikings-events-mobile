import 'package:json_annotation/json_annotation.dart';

part 'user_group_model.g.dart';

@JsonSerializable()
class UserGroupModel {
  final String userId;
  final String groupId;

  UserGroupModel({
    required this.userId,
    required this.groupId,
  });

  factory UserGroupModel.fromJson(Map<String, dynamic> json) =>
      _$UserGroupModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserGroupModelToJson(this);
}
