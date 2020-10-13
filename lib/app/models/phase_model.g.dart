// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
