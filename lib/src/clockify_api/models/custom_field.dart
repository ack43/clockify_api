import 'package:json_annotation/json_annotation.dart';

part 'custom_field.g.dart';

@JsonSerializable()
class CustomField {
  final String customFieldId;
  final String customFieldName;
  final String customFieldType;
  final String userId;
  final String value;

  CustomField({
    required this.customFieldId,
    required this.customFieldName,
    required this.customFieldType,
    required this.userId,
    required this.value,
  });

  factory CustomField.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFieldToJson(this);
}

@JsonSerializable()
class CustomFieldValue {
  final String customFieldId;
  final dynamic value;

  CustomFieldValue({required this.customFieldId, required this.value});

  factory CustomFieldValue.fromJson(Map<String, dynamic> json) =>
      _$CustomFieldValueFromJson(json);
  Map<String, dynamic> toJson() => _$CustomFieldValueToJson(this);
}
