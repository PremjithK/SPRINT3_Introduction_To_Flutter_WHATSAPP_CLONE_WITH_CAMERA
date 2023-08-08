// To parse this JSON data, do
//
//     final status = statusFromJson(jsonString);

import 'dart:convert';

Status statusFromJson(String str) => Status.fromJson(json.decode(str));

String statusToJson(Status data) => json.encode(data.toJson());

class Status {
  String name;
  String avatar;
  String statusTime;

  Status({
    required this.name,
    required this.avatar,
    required this.statusTime,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        name: json["name"],
        avatar: json["avatar"],
        statusTime: json["status_time"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "avatar": avatar,
        "status_time": statusTime,
      };
}
