import 'package:json_annotation/json_annotation.dart';
import 'package:testenovo/data_source/entry/login_entry/token_entry.dart';

part 'login_entry.g.dart';

@JsonSerializable()
class LoginEntry extends TokenEntry {
  int id;
  String username;
  String email;
  String firstName;
  String lastName;
  String gender;
  String image;

  LoginEntry({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
    required super.accessToken,
    required super.refreshToken,
    required super.expiresInMins,
  });
  factory LoginEntry.fromJson(Map<String, dynamic> json) {
    return _$LoginEntryFromJson(json);
  }
  @override
  Map<String, dynamic> toJson() => _$LoginEntryToJson(this);
}
