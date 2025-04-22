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

Membership _$MembershipFromJson(Map<String, dynamic> json) => Membership(
      userId: json['userId'] as String,
      hourlyRate: json['hourlyRate'] as String?,
      costRate: json['costRate'] as String?,
      targetId: json['targetId'] as String?,
      membershipType: json['membershipType'] as String?,
      membershipStatus: json['membershipStatus'] as String?,
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

SummaryReportSettings _$SummaryReportSettingsFromJson(
        Map<String, dynamic> json) =>
    SummaryReportSettings(
      group: json['group'] as String,
      subgroup: json['subgroup'] as String,
    );

Map<String, dynamic> _$SummaryReportSettingsToJson(
        SummaryReportSettings instance) =>
    <String, dynamic>{
      'group': instance.group,
      'subgroup': instance.subgroup,
    };
