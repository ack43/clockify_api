import 'package:json_annotation/json_annotation.dart';
import 'summary_report_settings.dart';

part 'user_settings.g.dart';

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
