// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      id: json['id'] as String,
      name: json['name'] as String?,
      hourlyRate: json['hourlyRate'] == null
          ? null
          : CostRate.fromJson(json['hourlyRate'] as Map<String, dynamic>),
      clientId: json['clientId'] as String?,
      workspaceId: json['workspaceId'] as String?,
      billable: json['billable'] as bool?,
      memberships: (json['memberships'] as List<dynamic>?)
          ?.map((e) => Membership.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: json['color'] as String?,
      estimate: json['estimate'] == null
          ? null
          : Estimate.fromJson(json['estimate'] as Map<String, dynamic>),
      archived: json['archived'] as bool?,
      duration: json['duration'] as String?,
      clientName: json['clientName'] as String?,
      note: json['note'] as String?,
      costRate: json['costRate'] == null
          ? null
          : CostRate.fromJson(json['costRate'] as Map<String, dynamic>),
      timeEstimate: json['timeEstimate'] == null
          ? null
          : TimeEstimate.fromJson(json['timeEstimate'] as Map<String, dynamic>),
      budgetEstimate: json['budgetEstimate'] == null
          ? null
          : Estimate.fromJson(json['budgetEstimate'] as Map<String, dynamic>),
      estimateReset: json['estimateReset'] == null
          ? null
          : EstimateReset.fromJson(
              json['estimateReset'] as Map<String, dynamic>),
      template: json['template'] as bool?,
      isPublic: json['isPublic'] as bool?,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hourlyRate': instance.hourlyRate?.toJson(),
      'clientId': instance.clientId,
      'workspaceId': instance.workspaceId,
      'billable': instance.billable,
      'memberships': instance.memberships?.map((e) => e.toJson()).toList(),
      'color': instance.color,
      'estimate': instance.estimate?.toJson(),
      'archived': instance.archived,
      'duration': instance.duration,
      'clientName': instance.clientName,
      'note': instance.note,
      'costRate': instance.costRate?.toJson(),
      'timeEstimate': instance.timeEstimate?.toJson(),
      'budgetEstimate': instance.budgetEstimate?.toJson(),
      'estimateReset': instance.estimateReset?.toJson(),
      'template': instance.template,
      'isPublic': instance.isPublic,
    };

BudgetEstimate _$BudgetEstimateFromJson(Map<String, dynamic> json) =>
    BudgetEstimate(
      active: json['active'] as bool,
      estimate: json['estimate'] as String,
      includeExpenses: json['includeExpenses'] as bool,
      resetOption: json['resetOption'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$BudgetEstimateToJson(BudgetEstimate instance) =>
    <String, dynamic>{
      'active': instance.active,
      'estimate': instance.estimate,
      'includeExpenses': instance.includeExpenses,
      'resetOption': instance.resetOption,
      'type': instance.type,
    };

Estimate _$EstimateFromJson(Map<String, dynamic> json) => Estimate(
      estimate: json['estimate'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$EstimateToJson(Estimate instance) => <String, dynamic>{
      'estimate': instance.estimate,
      'type': instance.type,
    };

EstimateReset _$EstimateResetFromJson(Map<String, dynamic> json) =>
    EstimateReset(
      dayOfMonth: (json['dayOfMonth'] as num?)?.toInt(),
      dayOfWeek: json['dayOfWeek'] as String?,
      hour: (json['hour'] as num?)?.toInt(),
      interval: json['interval'] as String?,
      month: json['month'] as String?,
    );

Map<String, dynamic> _$EstimateResetToJson(EstimateReset instance) =>
    <String, dynamic>{
      'dayOfMonth': instance.dayOfMonth,
      'dayOfWeek': instance.dayOfWeek,
      'hour': instance.hour,
      'interval': instance.interval,
      'month': instance.month,
    };

TimeEstimate _$TimeEstimateFromJson(Map<String, dynamic> json) => TimeEstimate(
      active: json['active'] as bool?,
      estimate: json['estimate'] as String?,
      includeNonBillable: json['includeNonBillable'] as bool?,
      resetOption: json['resetOption'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$TimeEstimateToJson(TimeEstimate instance) =>
    <String, dynamic>{
      'active': instance.active,
      'estimate': instance.estimate,
      'includeNonBillable': instance.includeNonBillable,
      'resetOption': instance.resetOption,
      'type': instance.type,
    };
