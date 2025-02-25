import 'package:json_annotation/json_annotation.dart';

part 'subdomain.g.dart';

@JsonSerializable()
class Subdomain {
  final String? name;
  final bool enabled;

  Subdomain({required this.name, required this.enabled});

  factory Subdomain.fromJson(Map<String, dynamic> json) =>
      _$SubdomainFromJson(json);

  Map<String, dynamic> toJson() => _$SubdomainToJson(this);
}
