import 'package:json_annotation/json_annotation.dart';

import 'rate.dart';

part 'task.g.dart';

@JsonSerializable(explicitToJson: true)
class Task {
  final String id;
  final String name;
  final String projectId;
  final bool billable;
  final int? budgetEstimate;
  final CostRate? costRate;
  final HourlyRate? hourlyRate;
  final String? duration;
  final String? estimate;
  final List<String>? assigneeIds;
  final List<String>? userGroupIds;
  final TaskStatus? status;
  final bool? active;

  Task({
    required this.id,
    required this.name,
    required this.projectId,
    required this.billable,
    this.budgetEstimate,
    this.costRate,
    this.hourlyRate,
    this.duration,
    this.estimate,
    this.assigneeIds,
    this.userGroupIds,
    this.status,
    this.active,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);
}

// ignore: constant_identifier_names
enum TaskStatus { ACTIVE, DONE, ALL }
// enum TaskStatus { active, done, all }
