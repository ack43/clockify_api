// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rate _$RateFromJson(Map<String, dynamic> json) => Rate(
      amount: json['amount'] as num,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$RateToJson(Rate instance) => <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };
