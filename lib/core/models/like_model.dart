import 'package:json_annotation/json_annotation.dart';

part 'like_model.g.dart';

@JsonSerializable()
class LikeModel {
  final String userId;
  final String commentId;

  LikeModel({
    required this.userId,
    required this.commentId,
  });

  factory LikeModel.fromJson(Map<String, dynamic> json) =>
      _$LikeModelFromJson(json);

  Map<String, dynamic> toJson() => _$LikeModelToJson(this);
}
