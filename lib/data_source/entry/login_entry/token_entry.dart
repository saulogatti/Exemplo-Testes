import 'package:json_annotation/json_annotation.dart';

part 'token_entry.g.dart';

@JsonSerializable()
class TokenEntry {
  @JsonKey(defaultValue: 60)
  int expiresInMins;
  String accessToken;
  String refreshToken;
  TokenEntry({
    this.expiresInMins = 60,
    required this.accessToken,
    required this.refreshToken,
  });
  factory TokenEntry.fromJson(Map<String, dynamic> json) {
    return _$TokenEntryFromJson(json);
  }
  Map<String, dynamic> toJson() => _$TokenEntryToJson(this);
}
