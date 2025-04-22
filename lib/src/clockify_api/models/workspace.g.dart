// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Workspace _$WorkspaceFromJson(Map<String, dynamic> json) => Workspace(
      id: json['id'] as String,
      name: json['name'] as String,
      hourlyRate:
          HourlyRate.fromJson(json['hourlyRate'] as Map<String, dynamic>),
      costRate: CostRate.fromJson(json['costRate'] as Map<String, dynamic>),
      memberships: (json['memberships'] as List<dynamic>)
          .map((e) => Membership.fromJson(e as Map<String, dynamic>))
          .toList(),
      workspaceSettings: WorkspaceSettings.fromJson(
          json['workspaceSettings'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String,
      featureSubscriptionType: json['featureSubscriptionType'] as String,
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
      currencies: (json['currencies'] as List<dynamic>)
          .map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      subdomain: Subdomain.fromJson(json['subdomain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkspaceToJson(Workspace instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hourlyRate': instance.hourlyRate.toJson(),
      'costRate': instance.costRate.toJson(),
      'memberships': instance.memberships.map((e) => e.toJson()).toList(),
      'workspaceSettings': instance.workspaceSettings.toJson(),
      'imageUrl': instance.imageUrl,
      'featureSubscriptionType': instance.featureSubscriptionType,
      'features': instance.features,
      'currencies': instance.currencies.map((e) => e.toJson()).toList(),
      'subdomain': instance.subdomain.toJson(),
    };

Subdomain _$SubdomainFromJson(Map<String, dynamic> json) => Subdomain(
      name: json['name'] as String?,
      enabled: json['enabled'] as bool,
    );

Map<String, dynamic> _$SubdomainToJson(Subdomain instance) => <String, dynamic>{
      'name': instance.name,
      'enabled': instance.enabled,
    };

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

Round _$RoundFromJson(Map<String, dynamic> json) => Round(
      round: json['round'] as String,
      minutes: json['minutes'] as String,
    );

Map<String, dynamic> _$RoundToJson(Round instance) => <String, dynamic>{
      'round': instance.round,
      'minutes': instance.minutes,
    };
