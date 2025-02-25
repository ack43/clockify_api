import 'package:json_annotation/json_annotation.dart';
import 'custom_field.dart';
import 'membership.dart';
import 'user_settings.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  final String activeWorkspace;
  final List<CustomField> customFields;
  final String defaultWorkspace;
  final String email;
  final String id;
  final List<Membership> memberships;
  final String name;
  final String profilePicture;
  final UserSettings settings;
  final String status;

  User({
    required this.activeWorkspace,
    required this.customFields,
    required this.defaultWorkspace,
    required this.email,
    required this.id,
    required this.memberships,
    required this.name,
    required this.profilePicture,
    required this.settings,
    required this.status,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
