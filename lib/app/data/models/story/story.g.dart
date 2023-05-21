// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Story _$$_StoryFromJson(Map<String, dynamic> json) => _$_Story(
      by: json['by'] as String,
      descendants: json['descendants'] as int,
      id: json['id'] as int,
      kids: (json['kids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      score: json['score'] as int,
      time: json['time'] as int,
      title: json['title'] as String,
      type: json['type'] as String,
      url: json['url'] as String?,
      deleted: json['deleted'] as bool?,
      text: json['text'] as String?,
      dead: json['dead'] as bool?,
      parent: json['parent'] as int?,
      poll: json['poll'],
      parts: json['parts'],
    );

Map<String, dynamic> _$$_StoryToJson(_$_Story instance) => <String, dynamic>{
      'by': instance.by,
      'descendants': instance.descendants,
      'id': instance.id,
      'kids': instance.kids,
      'score': instance.score,
      'time': instance.time,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
      'deleted': instance.deleted,
      'text': instance.text,
      'dead': instance.dead,
      'parent': instance.parent,
      'poll': instance.poll,
      'parts': instance.parts,
    };
