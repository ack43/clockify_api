// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Workspace _$WorkspaceFromJson(Map<String, dynamic> json) => Workspace(
      id: json['id'] as String,
      name: json['name'] as String,
      hourlyRate:
          HourlyRate.fromJson(json['hourlyRate'] as Map<String, dynamic>),
      costRate: CostRate.fromJson(json['costRate'] as Map<String, dynamic>),
      memberships: (json['memberships'] as List<dynamic>)
          .map((e) => Membership.fromJson(e as Map<String, dynamic>))
          .toList(),
      workspaceSettings: WorkspaceSettings.fromJson(
          json['workspaceSettings'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String,
      featureSubscriptionType: json['featureSubscriptionType'] as String,
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      subdomain: Subdomain.fromJson(json['subdomain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkspaceToJson(Workspace instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hourlyRate': instance.hourlyRate.toJson(),
      'costRate': instance.costRate.toJson(),
      'memberships': instance.memberships.map((e) => e.toJson()).toList(),
      'workspaceSettings': instance.workspaceSettings.toJson(),
      'imageUrl': instance.imageUrl,
      'featureSubscriptionType': instance.featureSubscriptionType,
      'features': instance.features,
      'currencies': instance.currencies.map((e) => e.toJson()).toList(),
      'subdomain': instance.subdomain.toJson(),
    };
