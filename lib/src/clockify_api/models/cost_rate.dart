import 'package:json_annotation/json_annotation.dart';

import 'rate.dart';

part 'cost_rate.g.dart';

@JsonSerializable()
class CostRate extends Rate {
  // final double amount;
  // final String currency;

  CostRate({required super.amount, required super.currency}) : super();

  factory CostRate.fromJson(Map<String, dynamic> json) =>
      _$CostRateFromJson(json);

  Map<String, dynamic> toJson() => _$CostRateToJson(this);
}
