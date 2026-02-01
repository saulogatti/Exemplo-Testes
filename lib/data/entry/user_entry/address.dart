import 'package:json_annotation/json_annotation.dart';

import 'coordinates.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String? address;

  String? city;
  String? state;
  String? stateCode;
  String? postalCode;
  Coordinates? coordinates;
  String? country;
  Address({
    this.address,
    this.city,
    this.state,
    this.stateCode,
    this.postalCode,
    this.coordinates,
    this.country,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
