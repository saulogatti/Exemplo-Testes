// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListUsers _$ListUsersFromJson(Map<String, dynamic> json) => ListUsers(
  users: (json['users'] as List<dynamic>)
      .map((e) => UserEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListUsersToJson(ListUsers instance) => <String, dynamic>{
  'users': instance.users.map((e) => e.toJson()).toList(),
};
