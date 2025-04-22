// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomField _$CustomFieldFromJson(Map<String, dynamic> json) => CustomField(
      customFieldId: json['customFieldId'] as String,
      customFieldName: json['customFieldName'] as String,
      customFieldType: json['customFieldType'] as String,
      userId: json['userId'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$CustomFieldToJson(CustomField instance) =>
    <String, dynamic>{
      'customFieldId': instance.customFieldId,
      'customFieldName': instance.customFieldName,
      'customFieldType': instance.customFieldType,
      'userId': instance.userId,
      'value': instance.value,
    };

CustomFieldValue _$CustomFieldValueFromJson(Map<String, dynamic> json) =>
    CustomFieldValue(
      customFieldId: json['customFieldId'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$CustomFieldValueToJson(CustomFieldValue instance) =>
    <String, dynamic>{
      'customFieldId': instance.customFieldId,
      'value': instance.value,
    };
