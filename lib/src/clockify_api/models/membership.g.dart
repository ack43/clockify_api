// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Membership _$MembershipFromJson(Map<String, dynamic> json) => Membership(
      userId: json['userId'] as String,
      hourlyRate: json['hourlyRate'] as String?,
      costRate: json['costRate'] as String?,
      targetId: json['targetId'] as String,
      membershipType: json['membershipType'] as String,
      membershipStatus: json['membershipStatus'] as String,
    );

Map<String, dynamic> _$MembershipToJson(Membership instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'hourlyRate': instance.hourlyRate,
      'costRate': instance.costRate,
      'targetId': instance.targetId,
      'membershipType': instance.membershipType,
      'membershipStatus': instance.membershipStatus,
    };
