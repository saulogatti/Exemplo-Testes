import 'package:json_annotation/json_annotation.dart';

part 'crypto.g.dart';

@JsonSerializable()
class Crypto {
  String? coin;

  String? wallet;
  String? network;
  Crypto({this.coin, this.wallet, this.network});

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return _$CryptoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CryptoToJson(this);
}
