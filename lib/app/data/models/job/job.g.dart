// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Job _$$_JobFromJson(Map<String, dynamic> json) => _$_Job(
      by: json['by'] as String?,
      id: json['id'] as int?,
      score: json['score'] as int?,
      text: json['text'] as String?,
      time: json['time'] as int?,
      title: json['title'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_JobToJson(_$_Job instance) => <String, dynamic>{
      'by': instance.by,
      'id': instance.id,
      'score': instance.score,
      'text': instance.text,
      'time': instance.time,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
    };
