// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      id: json['id'] as String,
      name: json['name'] as String,
      projectId: json['projectId'] as String,
      billable: json['billable'] as bool,
      budgetEstimate: (json['budgetEstimate'] as num?)?.toInt(),
      costRate: json['costRate'] == null
          ? null
          : CostRate.fromJson(json['costRate'] as Map<String, dynamic>),
      hourlyRate: json['hourlyRate'] == null
          ? null
          : HourlyRate.fromJson(json['hourlyRate'] as Map<String, dynamic>),
      duration: json['duration'] as String?,
      estimate: json['estimate'] as String?,
      assigneeIds: (json['assigneeIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      userGroupIds: (json['userGroupIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: $enumDecodeNullable(_$TaskStatusEnumMap, json['status']),
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'projectId': instance.projectId,
      'billable': instance.billable,
      'budgetEstimate': instance.budgetEstimate,
      'costRate': instance.costRate?.toJson(),
      'hourlyRate': instance.hourlyRate?.toJson(),
      'duration': instance.duration,
      'estimate': instance.estimate,
      'assigneeIds': instance.assigneeIds,
      'userGroupIds': instance.userGroupIds,
      'status': _$TaskStatusEnumMap[instance.status],
      'active': instance.active,
    };

const _$TaskStatusEnumMap = {
  TaskStatus.ACTIVE: 'ACTIVE',
  TaskStatus.DONE: 'DONE',
  TaskStatus.ALL: 'ALL',
};
