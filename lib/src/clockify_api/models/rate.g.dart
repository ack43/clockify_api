// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rate _$RateFromJson(Map<String, dynamic> json) => Rate(
      amount: (json['amount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$RateToJson(Rate instance) => <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

CostRate _$CostRateFromJson(Map<String, dynamic> json) => CostRate(
      amount: (json['amount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$CostRateToJson(CostRate instance) => <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

HourlyRate _$HourlyRateFromJson(Map<String, dynamic> json) => HourlyRate(
      amount: (json['amount'] as num?)?.toInt(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$HourlyRateToJson(HourlyRate instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      id: json['id'] as String,
      code: json['code'] as String,
      isDefault: json['isDefault'] as bool,
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'isDefault': instance.isDefault,
    };
