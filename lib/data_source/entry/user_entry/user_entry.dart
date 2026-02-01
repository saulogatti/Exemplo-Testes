import 'package:json_annotation/json_annotation.dart';
import 'package:testenovo/domain/models/user/user_model.dart';

import 'address.dart';
import 'bank.dart';
import 'company.dart';
import 'crypto.dart';
import 'hair.dart';

part 'user_entry.g.dart';

@JsonSerializable()
class UserEntry extends UserModel {
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;

  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  double? height;
  double? weight;
  String? eyeColor;
  Hair? hair;
  String? ip;
  Address? address;
  String? macAddress;
  String? university;
  Bank? bank;
  Company? company;
  String? ein;
  String? ssn;
  String? userAgent;
  Crypto? crypto;
  String? role;
  UserEntry({
    super.id = 0,
    super.firstName = '',
    this.lastName,
    this.maidenName,
    this.age,
    this.gender,
    super.email = '',
    this.phone,
    this.username,
    this.password,
    this.birthDate,
    this.image,
    this.bloodGroup,
    this.height,
    this.weight,
    this.eyeColor,
    this.hair,
    this.ip,
    this.address,
    this.macAddress,
    this.university,
    this.bank,
    this.company,
    this.ein,
    this.ssn,
    this.userAgent,
    this.crypto,
    this.role,
  });

  factory UserEntry.fromJson(Map<String, dynamic> json) {
    return _$UserEntryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserEntryToJson(this);
}
