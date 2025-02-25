import 'package:json_annotation/json_annotation.dart';
import 'cost_rate.dart';
import 'membership.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  final String id;
  final String? name;
  final CostRate? hourlyRate;
  final String? clientId;
  final String? workspaceId;
  final bool? billable;
  final List<Membership>? memberships;
  final String? color;
  final Estimate? estimate;
  final bool? archived;
  final String? duration;
  final String? clientName;
  final String? note;
  final CostRate? costRate;
  final TimeEstimate? timeEstimate;
  final Estimate? budgetEstimate;
  final EstimateReset? estimateReset;
  final bool? template;
  final bool? isPublic;

  Project({
    required this.id,
    required this.name,
    required this.hourlyRate,
    required this.clientId,
    required this.workspaceId,
    required this.billable,
    required this.memberships,
    required this.color,
    required this.estimate,
    required this.archived,
    required this.duration,
    this.clientName,
    this.note,
    this.costRate,
    required this.timeEstimate,
    this.budgetEstimate,
    this.estimateReset,
    required this.template,
    required this.isPublic,
  });

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);

  static List<Project> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((json) => Project.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}

// Other classes (BudgetEstimate, Estimate, Membership, etc.) remain the same as before.

@JsonSerializable()
class BudgetEstimate {
  final bool active;
  final String estimate;
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
  final String? estimate;
  final String? type;

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
  final int? dayOfMonth;
  final String? dayOfWeek;
  final int? hour;
  final String? interval;
  final String? month;

  EstimateReset({
    this.dayOfMonth,
    this.dayOfWeek,
    this.hour,
    this.interval,
    this.month,
  });

  factory EstimateReset.fromJson(Map<String, dynamic> json) =>
      _$EstimateResetFromJson(json);

  Map<String, dynamic> toJson() => _$EstimateResetToJson(this);
}

@JsonSerializable()
class TimeEstimate {
  final bool? active;
  final String? estimate;
  final bool? includeNonBillable;
  final String? resetOption;
  final String? type;

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
