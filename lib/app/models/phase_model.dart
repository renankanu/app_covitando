import 'package:json_annotation/json_annotation.dart';

part 'phase_model.g.dart';

@JsonSerializable()
class PhaseModel {
  String phase;
  String candidates;

  PhaseModel({
    this.phase,
    this.candidates,
  });

  factory PhaseModel.fromJson(Map<String, dynamic> json) =>
      _$PhaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$PhaseModelToJson(this);
}
