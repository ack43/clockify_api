// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyRate _$HourlyRateFromJson(Map<String, dynamic> json) => HourlyRate(
      amount: json['amount'] as num,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$HourlyRateToJson(HourlyRate instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };
