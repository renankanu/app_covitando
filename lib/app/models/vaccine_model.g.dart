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
