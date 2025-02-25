// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkspaceSettings _$WorkspaceSettingsFromJson(Map<String, dynamic> json) =>
    WorkspaceSettings(
      timeRoundingInReports: json['timeRoundingInReports'] as bool,
      onlyAdminsSeeBillableRates: json['onlyAdminsSeeBillableRates'] as bool,
      onlyAdminsCreateProject: json['onlyAdminsCreateProject'] as bool,
      onlyAdminsSeeDashboard: json['onlyAdminsSeeDashboard'] as bool,
      defaultBillableProjects: json['defaultBillableProjects'] as bool,
      lockTimeEntries: json['lockTimeEntries'] as bool?,
      lockTimeZone: json['lockTimeZone'] as bool?,
      round: Round.fromJson(json['round'] as Map<String, dynamic>),
      projectFavorites: json['projectFavorites'] as bool,
      canSeeTimeSheet: json['canSeeTimeSheet'] as bool,
      canSeeTracker: json['canSeeTracker'] as bool,
      projectPickerSpecialFilter: json['projectPickerSpecialFilter'] as bool,
      forceProjects: json['forceProjects'] as bool,
      forceTasks: json['forceTasks'] as bool,
      forceTags: json['forceTags'] as bool,
      forceDescription: json['forceDescription'] as bool,
      onlyAdminsSeeAllTimeEntries: json['onlyAdminsSeeAllTimeEntries'] as bool,
      onlyAdminsSeePublicProjectsEntries:
          json['onlyAdminsSeePublicProjectsEntries'] as bool,
      trackTimeDownToSecond: json['trackTimeDownToSecond'] as bool,
      projectGroupingLabel: json['projectGroupingLabel'] as String,
      adminOnlyPages: json['adminOnlyPages'] as List<dynamic>,
      automaticLock: json['automaticLock'] as bool?,
      onlyAdminsCreateTag: json['onlyAdminsCreateTag'] as bool,
      onlyAdminsCreateTask: json['onlyAdminsCreateTask'] as bool,
      timeTrackingMode: json['timeTrackingMode'] as String,
      multiFactorEnabled: json['multiFactorEnabled'] as bool,
      numberFormat: json['numberFormat'] as String,
      currencyFormat: json['currencyFormat'] as String,
      durationFormat: json['durationFormat'] as String,
      isProjectPublicByDefault: json['isProjectPublicByDefault'] as bool,
    );

Map<String, dynamic> _$WorkspaceSettingsToJson(WorkspaceSettings instance) =>
    <String, dynamic>{
      'timeRoundingInReports': instance.timeRoundingInReports,
      'onlyAdminsSeeBillableRates': instance.onlyAdminsSeeBillableRates,
      'onlyAdminsCreateProject': instance.onlyAdminsCreateProject,
      'onlyAdminsSeeDashboard': instance.onlyAdminsSeeDashboard,
      'defaultBillableProjects': instance.defaultBillableProjects,
      'lockTimeEntries': instance.lockTimeEntries,
      'lockTimeZone': instance.lockTimeZone,
      'round': instance.round,
      'projectFavorites': instance.projectFavorites,
      'canSeeTimeSheet': instance.canSeeTimeSheet,
      'canSeeTracker': instance.canSeeTracker,
      'projectPickerSpecialFilter': instance.projectPickerSpecialFilter,
      'forceProjects': instance.forceProjects,
      'forceTasks': instance.forceTasks,
      'forceTags': instance.forceTags,
      'forceDescription': instance.forceDescription,
      'onlyAdminsSeeAllTimeEntries': instance.onlyAdminsSeeAllTimeEntries,
      'onlyAdminsSeePublicProjectsEntries':
          instance.onlyAdminsSeePublicProjectsEntries,
      'trackTimeDownToSecond': instance.trackTimeDownToSecond,
      'projectGroupingLabel': instance.projectGroupingLabel,
      'adminOnlyPages': instance.adminOnlyPages,
      'automaticLock': instance.automaticLock,
      'onlyAdminsCreateTag': instance.onlyAdminsCreateTag,
      'onlyAdminsCreateTask': instance.onlyAdminsCreateTask,
      'timeTrackingMode': instance.timeTrackingMode,
      'multiFactorEnabled': instance.multiFactorEnabled,
      'numberFormat': instance.numberFormat,
      'currencyFormat': instance.currencyFormat,
      'durationFormat': instance.durationFormat,
      'isProjectPublicByDefault': instance.isProjectPublicByDefault,
    };
