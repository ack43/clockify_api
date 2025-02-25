import 'package:json_annotation/json_annotation.dart';

part 'summary_report_settings.g.dart';

@JsonSerializable()
class SummaryReportSettings {
  final String group;
  final String subgroup;

  SummaryReportSettings({
    required this.group,
    required this.subgroup,
  });

  factory SummaryReportSettings.fromJson(Map<String, dynamic> json) =>
      _$SummaryReportSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryReportSettingsToJson(this);
}
