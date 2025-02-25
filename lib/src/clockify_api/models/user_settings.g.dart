// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSettings _$UserSettingsFromJson(Map<String, dynamic> json) => UserSettings(
      alerts: json['alerts'] as bool,
      approval: json['approval'] as bool,
      collapseAllProjectLists: json['collapseAllProjectLists'] as bool,
      dashboardPinToTop: json['dashboardPinToTop'] as bool,
      dashboardSelection: json['dashboardSelection'] as String,
      dashboardViewType: json['dashboardViewType'] as String,
      dateFormat: json['dateFormat'] as String,
      groupSimilarEntriesDisabled: json['groupSimilarEntriesDisabled'] as bool,
      isCompactViewOn: json['isCompactViewOn'] as bool,
      lang: json['lang'] as String,
      longRunning: json['longRunning'] as bool,
      multiFactorEnabled: json['multiFactorEnabled'] as bool,
      myStartOfDay: json['myStartOfDay'] as String,
      onboarding: json['onboarding'] as bool,
      projectListCollapse: (json['projectListCollapse'] as num).toInt(),
      projectPickerTaskFilter: json['projectPickerTaskFilter'] as bool,
      pto: json['pto'] as bool,
      reminders: json['reminders'] as bool,
      scheduledReports: json['scheduledReports'] as bool,
      scheduling: json['scheduling'] as bool,
      sendNewsletter: json['sendNewsletter'] as bool,
      showOnlyWorkingDays: json['showOnlyWorkingDays'] as bool,
      summaryReportSettings: SummaryReportSettings.fromJson(
          json['summaryReportSettings'] as Map<String, dynamic>),
      theme: json['theme'] as String,
      timeFormat: json['timeFormat'] as String,
      timeTrackingManual: json['timeTrackingManual'] as bool,
      timeZone: json['timeZone'] as String,
      weekStart: json['weekStart'] as String,
      weeklyUpdates: json['weeklyUpdates'] as bool,
    );

Map<String, dynamic> _$UserSettingsToJson(UserSettings instance) =>
    <String, dynamic>{
      'alerts': instance.alerts,
      'approval': instance.approval,
      'collapseAllProjectLists': instance.collapseAllProjectLists,
      'dashboardPinToTop': instance.dashboardPinToTop,
      'dashboardSelection': instance.dashboardSelection,
      'dashboardViewType': instance.dashboardViewType,
      'dateFormat': instance.dateFormat,
      'groupSimilarEntriesDisabled': instance.groupSimilarEntriesDisabled,
      'isCompactViewOn': instance.isCompactViewOn,
      'lang': instance.lang,
      'longRunning': instance.longRunning,
      'multiFactorEnabled': instance.multiFactorEnabled,
      'myStartOfDay': instance.myStartOfDay,
      'onboarding': instance.onboarding,
      'projectListCollapse': instance.projectListCollapse,
      'projectPickerTaskFilter': instance.projectPickerTaskFilter,
      'pto': instance.pto,
      'reminders': instance.reminders,
      'scheduledReports': instance.scheduledReports,
      'scheduling': instance.scheduling,
      'sendNewsletter': instance.sendNewsletter,
      'showOnlyWorkingDays': instance.showOnlyWorkingDays,
      'summaryReportSettings': instance.summaryReportSettings.toJson(),
      'theme': instance.theme,
      'timeFormat': instance.timeFormat,
      'timeTrackingManual': instance.timeTrackingManual,
      'timeZone': instance.timeZone,
      'weekStart': instance.weekStart,
      'weeklyUpdates': instance.weeklyUpdates,
    };
