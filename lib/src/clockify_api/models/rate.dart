import 'package:json_annotation/json_annotation.dart';

part 'rate.g.dart';

@JsonSerializable()
class Rate {
  final int? amount;
  final String? currency;

  Rate({required this.amount, required this.currency});

  factory Rate.fromJson(Map<String, dynamic> json) => _$RateFromJson(json);

  Map<String, dynamic> toJson() => _$RateToJson(this);
}

@JsonSerializable()
class CostRate extends Rate {
  // final double amount;
  // final String currency;

  CostRate({required super.amount, required super.currency}) : super();

  factory CostRate.fromJson(Map<String, dynamic> json) =>
      _$CostRateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CostRateToJson(this);
}

@JsonSerializable()
class HourlyRate extends Rate {
  // final double amount;
  // final String currency;

  HourlyRate({required super.amount, required super.currency}) : super();

  factory HourlyRate.fromJson(Map<String, dynamic> json) =>
      _$HourlyRateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HourlyRateToJson(this);
}

@JsonSerializable()
class Currency {
  final String id;
  final String code;
  final bool isDefault;

  Currency({required this.id, required this.code, required this.isDefault});

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}
