import 'package:json_annotation/json_annotation.dart';

part 'membership.g.dart';

@JsonSerializable()
class Membership {
  final String userId;
  final String? hourlyRate;
  final String? costRate;
  final String? targetId;
  final String? membershipType;
  final String? membershipStatus;

  Membership({
    required this.userId,
    required this.hourlyRate,
    required this.costRate,
    required this.targetId,
    required this.membershipType,
    required this.membershipStatus,
  });

  factory Membership.fromJson(Map<String, dynamic> json) =>
      _$MembershipFromJson(json);

  Map<String, dynamic> toJson() => _$MembershipToJson(this);
}
