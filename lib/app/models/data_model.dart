import 'package:json_serializable/builder.dart';

import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

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
