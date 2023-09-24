import 'dart:convert';

import 'model.dart';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  final String? message;
  final User? user;
  final String? accessToken;

  AuthModel({
    this.message,
    this.user,
    this.accessToken,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        message: json["message"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "user": user?.toJson(),
        "access_token": accessToken,
      };
}
