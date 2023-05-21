// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ask _$$_AskFromJson(Map<String, dynamic> json) => _$_Ask(
      by: json['by'] as String?,
      descendants: json['descendants'] as int?,
      id: json['id'] as int?,
      kids: (json['kids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      score: json['score'] as int?,
      text: json['text'] as String?,
      time: json['time'] as int?,
      title: json['title'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_AskToJson(_$_Ask instance) => <String, dynamic>{
      'by': instance.by,
      'descendants': instance.descendants,
      'id': instance.id,
      'kids': instance.kids,
      'score': instance.score,
      'text': instance.text,
      'time': instance.time,
      'title': instance.title,
      'type': instance.type,
    };
