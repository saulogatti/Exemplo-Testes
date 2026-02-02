// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenEntry _$TokenEntryFromJson(Map<String, dynamic> json) => TokenEntry(
  expiresInMins: (json['expiresInMins'] as num?)?.toInt() ?? 60,
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
);

Map<String, dynamic> _$TokenEntryToJson(TokenEntry instance) =>
    <String, dynamic>{
      'expiresInMins': instance.expiresInMins,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
