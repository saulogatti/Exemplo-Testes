// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginEntry _$LoginEntryFromJson(Map<String, dynamic> json) => LoginEntry(
  id: (json['id'] as num).toInt(),
  username: json['username'] as String,
  email: json['email'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  gender: json['gender'] as String,
  image: json['image'] as String,
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
  expiresInMins: (json['expiresInMins'] as num?)?.toInt() ?? 60,
);

Map<String, dynamic> _$LoginEntryToJson(LoginEntry instance) =>
    <String, dynamic>{
      'expiresInMins': instance.expiresInMins,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'image': instance.image,
    };
