// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      archived: json['archived'] as bool,
      billable: json['billable'] as bool,
      budgetEstimate: BudgetEstimate.fromJson(
          json['budgetEstimate'] as Map<String, dynamic>),
      clientId: json['clientId'] as String,
      clientName: json['clientName'] as String,
      color: json['color'] as String,
      costRate: CostRate.fromJson(json['costRate'] as Map<String, dynamic>),
      duration: json['duration'] as String,
      estimate: Estimate.fromJson(json['estimate'] as Map<String, dynamic>),
      estimateReset:
          EstimateReset.fromJson(json['estimateReset'] as Map<String, dynamic>),
      hourlyRate: CostRate.fromJson(json['hourlyRate'] as Map<String, dynamic>),
      id: json['id'] as String,
      memberships: (json['memberships'] as List<dynamic>)
          .map((e) => Membership.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      note: json['note'] as String,
      isPublic: json['isPublic'] as bool,
      template: json['template'] as bool,
      timeEstimate:
          TimeEstimate.fromJson(json['timeEstimate'] as Map<String, dynamic>),
      workspaceId: json['workspaceId'] as String,
    );

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'archived': instance.archived,
      'billable': instance.billable,
      'budgetEstimate': instance.budgetEstimate,
      'clientId': instance.clientId,
      'clientName': instance.clientName,
      'color': instance.color,
      'costRate': instance.costRate,
      'duration': instance.duration,
      'estimate': instance.estimate,
      'estimateReset': instance.estimateReset,
      'hourlyRate': instance.hourlyRate,
      'id': instance.id,
      'memberships': instance.memberships,
      'name': instance.name,
      'note': instance.note,
      'isPublic': instance.isPublic,
      'template': instance.template,
      'timeEstimate': instance.timeEstimate,
      'workspaceId': instance.workspaceId,
    };

BudgetEstimate _$BudgetEstimateFromJson(Map<String, dynamic> json) =>
    BudgetEstimate(
      active: json['active'] as bool,
      estimate: (json['estimate'] as num).toInt(),
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
      estimate: json['estimate'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$EstimateToJson(Estimate instance) => <String, dynamic>{
      'estimate': instance.estimate,
      'type': instance.type,
    };

EstimateReset _$EstimateResetFromJson(Map<String, dynamic> json) =>
    EstimateReset(
      dayOfMonth: (json['dayOfMonth'] as num).toInt(),
      dayOfWeek: json['dayOfWeek'] as String,
      hour: (json['hour'] as num).toInt(),
      interval: json['interval'] as String,
      month: json['month'] as String,
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
      active: json['active'] as bool,
      estimate: json['estimate'] as String,
      includeNonBillable: json['includeNonBillable'] as bool,
      resetOption: json['resetOption'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$TimeEstimateToJson(TimeEstimate instance) =>
    <String, dynamic>{
      'active': instance.active,
      'estimate': instance.estimate,
      'includeNonBillable': instance.includeNonBillable,
      'resetOption': instance.resetOption,
      'type': instance.type,
    };

Membership _$MembershipFromJson(Map<String, dynamic> json) => Membership();

Map<String, dynamic> _$MembershipToJson(Membership instance) =>
    <String, dynamic>{};

CostRate _$CostRateFromJson(Map<String, dynamic> json) => CostRate(
      amount: (json['amount'] as num).toInt(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$CostRateToJson(CostRate instance) => <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
    };
