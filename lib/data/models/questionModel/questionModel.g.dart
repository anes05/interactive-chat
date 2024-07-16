// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionModelImpl _$$QuestionModelImplFromJson(Map<String, dynamic> json) =>
    _$QuestionModelImpl(
      questionId: (json['questionId'] as num).toInt(),
      question: json['question'] as String,
      response: json['response'] as String?,
      iconUrl: json['iconUrl'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      type: json['type'] as String,
      defaultValue: json['defaultValue'] as String,
    );

Map<String, dynamic> _$$QuestionModelImplToJson(_$QuestionModelImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'question': instance.question,
      'response': instance.response,
      'iconUrl': instance.iconUrl,
      'options': instance.options,
      'type': instance.type,
      'defaultValue': instance.defaultValue,
    };
