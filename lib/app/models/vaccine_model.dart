import 'package:appmodularmobx/app/models/data_model.dart';
import 'package:appmodularmobx/app/models/phase_model.dart';
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
