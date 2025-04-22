// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeEntry _$TimeEntryFromJson(Map<String, dynamic> json) => TimeEntry(
      id: json['id'] as String,
      workspaceId: json['workspaceId'] as String,
      projectId: json['projectId'] as String?,
      taskId: json['taskId'] as String?,
      userId: json['userId'] as String,
      kioskId: json['kioskId'] as String?,
      description: json['description'] as String?,
      billable: json['billable'] as bool,
      isLocked: json['isLocked'] as bool,
      tagIds:
          (json['tagIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
      timeInterval:
          TimeInterval.fromJson(json['timeInterval'] as Map<String, dynamic>),
      costRate: json['costRate'] == null
          ? null
          : Rate.fromJson(json['costRate'] as Map<String, dynamic>),
      hourlyRate: json['hourlyRate'] == null
          ? null
          : Rate.fromJson(json['hourlyRate'] as Map<String, dynamic>),
      customFieldValues: (json['customFieldValues'] as List<dynamic>?)
          ?.map((e) => CustomFieldValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$TimeEntryToJson(TimeEntry instance) => <String, dynamic>{
      'id': instance.id,
      'workspaceId': instance.workspaceId,
      'projectId': instance.projectId,
      'taskId': instance.taskId,
      'userId': instance.userId,
      'kioskId': instance.kioskId,
      'description': instance.description,
      'billable': instance.billable,
      'isLocked': instance.isLocked,
      'tagIds': instance.tagIds,
      'timeInterval': instance.timeInterval.toJson(),
      'costRate': instance.costRate?.toJson(),
      'hourlyRate': instance.hourlyRate?.toJson(),
      'customFieldValues':
          instance.customFieldValues?.map((e) => e.toJson()).toList(),
      'type': instance.type,
    };

TimeInterval _$TimeIntervalFromJson(Map<String, dynamic> json) => TimeInterval(
      start: json['start'] as String,
      end: json['end'] as String?,
      duration: json['duration'] as String?,
    );

Map<String, dynamic> _$TimeIntervalToJson(TimeInterval instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'duration': instance.duration,
    };
