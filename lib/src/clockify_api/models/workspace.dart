import 'package:json_annotation/json_annotation.dart';
import 'rate.dart';
import 'user.dart' show Membership;

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

@JsonSerializable()
class Subdomain {
  final String? name;
  final bool enabled;

  Subdomain({required this.name, required this.enabled});

  factory Subdomain.fromJson(Map<String, dynamic> json) =>
      _$SubdomainFromJson(json);

  Map<String, dynamic> toJson() => _$SubdomainToJson(this);
}

@JsonSerializable()
class WorkspaceSettings {
  final bool timeRoundingInReports;
  final bool onlyAdminsSeeBillableRates;
  final bool onlyAdminsCreateProject;
  final bool onlyAdminsSeeDashboard;
  final bool defaultBillableProjects;
  final bool? lockTimeEntries;
  final bool? lockTimeZone;
  final Round round;
  final bool projectFavorites;
  final bool canSeeTimeSheet;
  final bool canSeeTracker;
  final bool projectPickerSpecialFilter;
  final bool forceProjects;
  final bool forceTasks;
  final bool forceTags;
  final bool forceDescription;
  final bool onlyAdminsSeeAllTimeEntries;
  final bool onlyAdminsSeePublicProjectsEntries;
  final bool trackTimeDownToSecond;
  final String projectGroupingLabel;
  final List<dynamic> adminOnlyPages;
  final bool? automaticLock;
  final bool onlyAdminsCreateTag;
  final bool onlyAdminsCreateTask;
  final String timeTrackingMode;
  final bool multiFactorEnabled;
  final String numberFormat;
  final String currencyFormat;
  final String durationFormat;
  final bool isProjectPublicByDefault;

  WorkspaceSettings({
    required this.timeRoundingInReports,
    required this.onlyAdminsSeeBillableRates,
    required this.onlyAdminsCreateProject,
    required this.onlyAdminsSeeDashboard,
    required this.defaultBillableProjects,
    required this.lockTimeEntries,
    required this.lockTimeZone,
    required this.round,
    required this.projectFavorites,
    required this.canSeeTimeSheet,
    required this.canSeeTracker,
    required this.projectPickerSpecialFilter,
    required this.forceProjects,
    required this.forceTasks,
    required this.forceTags,
    required this.forceDescription,
    required this.onlyAdminsSeeAllTimeEntries,
    required this.onlyAdminsSeePublicProjectsEntries,
    required this.trackTimeDownToSecond,
    required this.projectGroupingLabel,
    required this.adminOnlyPages,
    required this.automaticLock,
    required this.onlyAdminsCreateTag,
    required this.onlyAdminsCreateTask,
    required this.timeTrackingMode,
    required this.multiFactorEnabled,
    required this.numberFormat,
    required this.currencyFormat,
    required this.durationFormat,
    required this.isProjectPublicByDefault,
  });

  factory WorkspaceSettings.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$WorkspaceSettingsToJson(this);
}

@JsonSerializable()
class Round {
  final String round;
  final String minutes;

  Round({required this.round, required this.minutes});

  factory Round.fromJson(Map<String, dynamic> json) => _$RoundFromJson(json);

  Map<String, dynamic> toJson() => _$RoundToJson(this);
}
