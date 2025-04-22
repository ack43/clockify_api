// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Client _$ClientFromJson(Map<String, dynamic> json) => Client(
      id: json['id'] as String,
      name: json['name'] as String?,
      address: json['address'] as String?,
      archived: json['archived'] as bool?,
      currencyCode: json['currencyCode'] as String?,
      currencyId: json['currencyId'] as String?,
      email: json['email'] as String?,
      note: json['note'] as String?,
      workspaceId: json['workspaceId'] as String?,
    );

Map<String, dynamic> _$ClientToJson(Client instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'archived': instance.archived,
      'currencyCode': instance.currencyCode,
      'currencyId': instance.currencyId,
      'email': instance.email,
      'note': instance.note,
      'workspaceId': instance.workspaceId,
    };
