// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VaccineModel _$VaccineModelFromJson(Map<String, dynamic> json) {
  return VaccineModel(
    source: json['source'] as String,
    totalCandidates: json['totalCandidates'] as String,
    phases: (json['phases'] as List)
        ?.map((e) =>
            e == null ? null : PhaseModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    data: (json['data'] as List)
        ?.map((e) =>
            e == null ? null : DataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$VaccineModelToJson(VaccineModel instance) =>
    <String, dynamic>{
      'source': instance.source,
      'totalCandidates': instance.totalCandidates,
      'phases': instance.phases,
      'data': instance.data,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return DataModel(
    candidate: json['candidate'] as String,
    mechanism: json['mechanism'] as String,
    sponsors: (json['sponsors'] as List)?.map((e) => e as String)?.toList(),
    details: json['details'] as String,
    trialPhase: json['trialPhase'] as String,
    institutions:
        (json['institutions'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'candidate': instance.candidate,
      'mechanism': instance.mechanism,
      'sponsors': instance.sponsors,
      'details': instance.details,
      'trialPhase': instance.trialPhase,
      'institutions': instance.institutions,
    };

PhaseModel _$PhaseModelFromJson(Map<String, dynamic> json) {
  return PhaseModel(
    phase: json['phase'] as String,
    candidates: json['candidates'] as String,
  );
}

Map<String, dynamic> _$PhaseModelToJson(PhaseModel instance) =>
    <String, dynamic>{
      'phase': instance.phase,
      'candidates': instance.candidates,
    };
