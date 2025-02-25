import 'package:json_annotation/json_annotation.dart';
import 'round.dart';

part 'workspace_settings.g.dart';

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
