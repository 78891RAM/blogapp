part of 'login_imports.dart';

// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  String? message;
  String? accessToken;
  String? tokenType;

  AuthModel({
    this.message,
    this.accessToken,
    this.tokenType,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        message: json["message"],
        accessToken: json["access_token"],
        tokenType: json["token_type"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "access_token": accessToken,
        "token_type": tokenType,
      };
}
