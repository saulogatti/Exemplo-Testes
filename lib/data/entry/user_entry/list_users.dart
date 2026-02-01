import 'package:testenovo/data/entry/user_entry/user_entry.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_users.g.dart';
@JsonSerializable()
class ListUsers {
  List<UserEntry> users;
  ListUsers({required this.users});
  factory ListUsers.fromJson(Map<String, dynamic> json) => _$ListUsersFromJson(json);
  Map<String, dynamic> toJson() => _$ListUsersToJson(this);
}
