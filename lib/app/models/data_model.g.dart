// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
