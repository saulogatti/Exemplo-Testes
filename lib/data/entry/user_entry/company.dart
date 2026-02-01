import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  String? department;

  String? name;
  String? title;
  Address? address;
  Company({this.department, this.name, this.title, this.address});

  factory Company.fromJson(Map<String, dynamic> json) {
    return _$CompanyFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
