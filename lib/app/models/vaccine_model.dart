import 'package:json_annotation/json_annotation.dart';

part 'vaccine_model.g.dart';

@JsonSerializable()
class VaccineModel {
  String source;
  String totalCandidates;
  List<PhaseModel> phases;
  List<DataModel> data;

  VaccineModel({
    this.source,
    this.totalCandidates,
    this.phases,
    this.data,
  });

  factory VaccineModel.fromJson(Map<String, dynamic> json) =>
      _$VaccineModelFromJson(json);
  Map<String, dynamic> toJson() => _$VaccineModelToJson(this);
}

@JsonSerializable()
class DataModel {
  String candidate;
  String mechanism;
  List<String> sponsors;
  String details;
  String trialPhase;
  List<String> institutions;

  DataModel({
    this.candidate,
    this.mechanism,
    this.sponsors,
    this.details,
    this.trialPhase,
    this.institutions,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
  Map<String, dynamic> toJson() => _$DataModelToJson(this);
}

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
