import 'package:json_annotation/json_annotation.dart';
import 'membership.dart';
import 'currency.dart';
import 'subdomain.dart';
import 'workspace_settings.dart';
import 'hourly_rate.dart';
import 'cost_rate.dart';

part 'workspace.g.dart';

@JsonSerializable(explicitToJson: true)
class Workspace {
  final String id;
  final String name;
  final HourlyRate hourlyRate;
  final CostRate costRate;
  final List<Membership> memberships;
  final WorkspaceSettings workspaceSettings;
  final String imageUrl;
  final String featureSubscriptionType;
  final List<String> features;
  final List<Currency> currencies;
  final Subdomain subdomain;

  Workspace({
    required this.id,
    required this.name,
    required this.hourlyRate,
    required this.costRate,
    required this.memberships,
    required this.workspaceSettings,
    required this.imageUrl,
    required this.featureSubscriptionType,
    required this.features,
    required this.currencies,
    required this.subdomain,
  });

  factory Workspace.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceFromJson(json);

  Map<String, dynamic> toJson() => _$WorkspaceToJson(this);
}
