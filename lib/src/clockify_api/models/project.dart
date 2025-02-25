import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  final bool archived;
  final bool billable;
  final BudgetEstimate budgetEstimate;
  final String clientId;
  final String clientName;
  final String color;
  final CostRate costRate;
  final String duration;
  final Estimate estimate;
  final EstimateReset estimateReset;
  final CostRate hourlyRate;
  final String id;
  final List<Membership> memberships;
  final String name;
  final String note;
  final bool isPublic;
  final bool template;
  final TimeEstimate timeEstimate;
  final String workspaceId;

  Project({
    required this.archived,
    required this.billable,
    required this.budgetEstimate,
    required this.clientId,
    required this.clientName,
    required this.color,
    required this.costRate,
    required this.duration,
    required this.estimate,
    required this.estimateReset,
    required this.hourlyRate,
    required this.id,
    required this.memberships,
    required this.name,
    required this.note,
    required this.isPublic,
    required this.template,
    required this.timeEstimate,
    required this.workspaceId,
  });

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}

@JsonSerializable()
class BudgetEstimate {
  final bool active;
  final int estimate;
  final bool includeExpenses;
  final String resetOption;
  final String type;

  BudgetEstimate({
    required this.active,
    required this.estimate,
    required this.includeExpenses,
    required this.resetOption,
    required this.type,
  });

  factory BudgetEstimate.fromJson(Map<String, dynamic> json) =>
      _$BudgetEstimateFromJson(json);

  Map<String, dynamic> toJson() => _$BudgetEstimateToJson(this);
}

@JsonSerializable()
class Estimate {
  final String estimate;
  final String type;

  Estimate({
    required this.estimate,
    required this.type,
  });

  factory Estimate.fromJson(Map<String, dynamic> json) =>
      _$EstimateFromJson(json);

  Map<String, dynamic> toJson() => _$EstimateToJson(this);
}

@JsonSerializable()
class EstimateReset {
  final int dayOfMonth;
  final String dayOfWeek;
  final int hour;
  final String interval;
  final String month;

  EstimateReset({
    required this.dayOfMonth,
    required this.dayOfWeek,
    required this.hour,
    required this.interval,
    required this.month,
  });

  factory EstimateReset.fromJson(Map<String, dynamic> json) =>
      _$EstimateResetFromJson(json);

  Map<String, dynamic> toJson() => _$EstimateResetToJson(this);
}

@JsonSerializable()
class TimeEstimate {
  final bool active;
  final String estimate;
  final bool includeNonBillable;
  final String resetOption;
  final String type;

  TimeEstimate({
    required this.active,
    required this.estimate,
    required this.includeNonBillable,
    required this.resetOption,
    required this.type,
  });

  factory TimeEstimate.fromJson(Map<String, dynamic> json) =>
      _$TimeEstimateFromJson(json);

  Map<String, dynamic> toJson() => _$TimeEstimateToJson(this);
}

@JsonSerializable()
class Membership {
  // Add fields here as needed, based on your JSON
  Membership();

  factory Membership.fromJson(Map<String, dynamic> json) =>
      _$MembershipFromJson(json);

  Map<String, dynamic> toJson() => _$MembershipToJson(this);
}

@JsonSerializable()
class CostRate {
  final int amount;
  final String currency;

  CostRate({
    required this.amount,
    required this.currency,
  });

  factory CostRate.fromJson(Map<String, dynamic> json) =>
      _$CostRateFromJson(json);

  Map<String, dynamic> toJson() => _$CostRateToJson(this);
}
