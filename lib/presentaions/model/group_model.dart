import 'dart:convert';

GroupModel groupModelFromJson(String str) =>
    GroupModel.fromJson(json.decode(str));

String groupModelToJson(GroupModel data) => json.encode(data.toJson());

class GroupModel {
  final int? status;
  final String? message;
  final List<Group>? data;

  GroupModel({
    this.status,
    this.message,
    this.data,
  });

  factory GroupModel.fromJson(Map<String, dynamic> json) => GroupModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Group>.from(json["data"]!.map((x) => Group.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Group {
  final Groups? groups;
  final List<Image>? images;
  final int? memberCount;

  Group({
    this.groups,
    this.images,
    this.memberCount,
  });

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        groups: json["groups"] == null ? null : Groups.fromJson(json["groups"]),
        images: json["images"] == null
            ? []
            : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
        memberCount: json["memberCount"],
      );

  Map<String, dynamic> toJson() => {
        "groups": groups?.toJson(),
        "images": images == null
            ? []
            : List<dynamic>.from(images!.map((x) => x.toJson())),
        "memberCount": memberCount,
      };
}

class Groups {
  final String? id;
  final String? title;

  Groups({
    this.id,
    this.title,
  });

  factory Groups.fromJson(Map<String, dynamic> json) => Groups(
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}

class Image {
  final String? id;
  final String? url;

  Image({
    this.id,
    this.url,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
      };
}
