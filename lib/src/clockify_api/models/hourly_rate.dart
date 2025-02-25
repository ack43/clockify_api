import 'package:json_annotation/json_annotation.dart';

import 'rate.dart';

part 'hourly_rate.g.dart';

@JsonSerializable()
class HourlyRate extends Rate {
  // final double amount;
  // final String currency;

  HourlyRate({required super.amount, required super.currency}) : super();

  factory HourlyRate.fromJson(Map<String, dynamic> json) =>
      _$HourlyRateFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyRateToJson(this);
}
