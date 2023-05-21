// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Poll _$$_PollFromJson(Map<String, dynamic> json) => _$_Poll(
      by: json['by'] as String?,
      descendants: json['descendants'] as int?,
      id: json['id'] as int?,
      kids: (json['kids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      parts: (json['parts'] as List<dynamic>?)?.map((e) => e as int).toList(),
      score: json['score'] as int?,
      text: json['text'] as String?,
      time: json['time'] as int?,
      title: json['title'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_PollToJson(_$_Poll instance) => <String, dynamic>{
      'by': instance.by,
      'descendants': instance.descendants,
      'id': instance.id,
      'kids': instance.kids,
      'parts': instance.parts,
      'score': instance.score,
      'text': instance.text,
      'time': instance.time,
      'title': instance.title,
      'type': instance.type,
    };
