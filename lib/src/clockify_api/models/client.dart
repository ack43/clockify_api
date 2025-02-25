import 'package:json_annotation/json_annotation.dart';

part 'client.g.dart';

@JsonSerializable()
class Client {
  final String id;
  final String? name;
  final String? address;
  final bool? archived;
  final String? currencyCode;
  final String? currencyId;
  final String? email;
  final String? note;
  final String? workspaceId;

  Client({
    required this.id,
    required this.name,
    required this.address,
    required this.archived,
    this.currencyCode,
    required this.currencyId,
    required this.email,
    required this.note,
    required this.workspaceId,
  });

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
  Map<String, dynamic> toJson() => _$ClientToJson(this);
}
