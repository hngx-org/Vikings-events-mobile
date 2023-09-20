import 'package:json_annotation/json_annotation.dart';

part 'comment_image_model.g.dart';

@JsonSerializable()
class CommentImageModel {
  final String commentId;
  final String imageId;

  CommentImageModel({
    required this.commentId,
    required this.imageId,
  });

  factory CommentImageModel.fromJson(Map<String, dynamic> json) =>
      _$CommentImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentImageModelToJson(this);
}
