import 'package:json_annotation/json_annotation.dart';
import 'custom_field.dart';

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

@JsonSerializable(explicitToJson: true)
class UserSettings {
  final bool alerts;
  final bool approval;
  final bool collapseAllProjectLists;
  final bool dashboardPinToTop;
  final String dashboardSelection;
  final String dashboardViewType;
  final String dateFormat;
  final bool groupSimilarEntriesDisabled;
  final bool isCompactViewOn;
  final String lang;
  final bool longRunning;
  final bool multiFactorEnabled;
  final String myStartOfDay;
  final bool onboarding;
  final int projectListCollapse;
  final bool projectPickerTaskFilter;
  final bool pto;
  final bool reminders;
  final bool scheduledReports;
  final bool scheduling;
  final bool sendNewsletter;
  final bool showOnlyWorkingDays;
  final SummaryReportSettings summaryReportSettings;
  final String theme;
  final String timeFormat;
  final bool timeTrackingManual;
  final String timeZone;
  final String weekStart;
  final bool weeklyUpdates;

  UserSettings({
    required this.alerts,
    required this.approval,
    required this.collapseAllProjectLists,
    required this.dashboardPinToTop,
    required this.dashboardSelection,
    required this.dashboardViewType,
    required this.dateFormat,
    required this.groupSimilarEntriesDisabled,
    required this.isCompactViewOn,
    required this.lang,
    required this.longRunning,
    required this.multiFactorEnabled,
    required this.myStartOfDay,
    required this.onboarding,
    required this.projectListCollapse,
    required this.projectPickerTaskFilter,
    required this.pto,
    required this.reminders,
    required this.scheduledReports,
    required this.scheduling,
    required this.sendNewsletter,
    required this.showOnlyWorkingDays,
    required this.summaryReportSettings,
    required this.theme,
    required this.timeFormat,
    required this.timeTrackingManual,
    required this.timeZone,
    required this.weekStart,
    required this.weeklyUpdates,
  });

  factory UserSettings.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$UserSettingsToJson(this);
}

@JsonSerializable()
class SummaryReportSettings {
  final String group;
  final String subgroup;

  SummaryReportSettings({
    required this.group,
    required this.subgroup,
  });

  factory SummaryReportSettings.fromJson(Map<String, dynamic> json) =>
      _$SummaryReportSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryReportSettingsToJson(this);
}
