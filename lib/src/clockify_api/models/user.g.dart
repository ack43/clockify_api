// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      activeWorkspace: json['activeWorkspace'] as String,
      customFields: (json['customFields'] as List<dynamic>)
          .map((e) => CustomField.fromJson(e as Map<String, dynamic>))
          .toList(),
      defaultWorkspace: json['defaultWorkspace'] as String,
      email: json['email'] as String,
      id: json['id'] as String,
      memberships: (json['memberships'] as List<dynamic>)
          .map((e) => Membership.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      profilePicture: json['profilePicture'] as String,
      settings: UserSettings.fromJson(json['settings'] as Map<String, dynamic>),
      status: json['status'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'activeWorkspace': instance.activeWorkspace,
      'customFields': instance.customFields.map((e) => e.toJson()).toList(),
      'defaultWorkspace': instance.defaultWorkspace,
      'email': instance.email,
      'id': instance.id,
      'memberships': instance.memberships.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'settings': instance.settings.toJson(),
      'status': instance.status,
    };
