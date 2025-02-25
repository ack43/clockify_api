import 'package:json_annotation/json_annotation.dart';

part 'round.g.dart';

@JsonSerializable()
class Round {
  final String round;
  final String minutes;

  Round({required this.round, required this.minutes});

  factory Round.fromJson(Map<String, dynamic> json) => _$RoundFromJson(json);

  Map<String, dynamic> toJson() => _$RoundToJson(this);
}
