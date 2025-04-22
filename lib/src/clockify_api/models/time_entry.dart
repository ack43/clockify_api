import 'package:json_annotation/json_annotation.dart';

import 'rate.dart';
import 'custom_field.dart';
part 'time_entry.g.dart';

@JsonSerializable(explicitToJson: true)
class TimeEntry {
  final String id;
  final String workspaceId;
  final String? projectId;
  final String? taskId;
  final String userId;
  final String? kioskId;
  final String? description;
  final bool billable;
  final bool isLocked;
  final List<String>? tagIds;
  final TimeInterval timeInterval;
  final Rate? costRate;
  final Rate? hourlyRate;
  final List<CustomFieldValue>? customFieldValues;
  final String type; // "REGULAR", "BREAK", "HOLIDAY", "TIME_OFF"

  TimeEntry({
    required this.id,
    required this.workspaceId,
    this.projectId,
    this.taskId,
    required this.userId,
    this.kioskId,
    this.description,
    required this.billable,
    required this.isLocked,
    this.tagIds,
    required this.timeInterval,
    this.costRate,
    this.hourlyRate,
    this.customFieldValues,
    required this.type,
  });

  factory TimeEntry.fromJson(Map<String, dynamic> json) =>
      _$TimeEntryFromJson(json);
  Map<String, dynamic> toJson() => _$TimeEntryToJson(this);
}

@JsonSerializable()
class TimeInterval {
  final String start;
  final String? end;
  final String? duration;

  TimeInterval({required this.start, this.end, this.duration});

  factory TimeInterval.fromJson(Map<String, dynamic> json) =>
      _$TimeIntervalFromJson(json);
  Map<String, dynamic> toJson() => _$TimeIntervalToJson(this);
}

// @JsonSerializable()
// class Rate {
//   final double amount;
//   final String currency;

//   Rate({required this.amount, required this.currency});

//   factory Rate.fromJson(Map<String, dynamic> json) => _$RateFromJson(json);
//   Map<String, dynamic> toJson() => _$RateToJson(this);
// }

// @JsonSerializable()
// class CustomFieldValue {
//   final String customFieldId;
//   final dynamic value;

//   CustomFieldValue({required this.customFieldId, required this.value});

//   factory CustomFieldValue.fromJson(Map<String, dynamic> json) =>
//       _$CustomFieldValueFromJson(json);
//   Map<String, dynamic> toJson() => _$CustomFieldValueToJson(this);
// }
