// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      by: json['by'] as String?,
      id: json['id'],
      created: json['created'] as int?,
      kids: (json['kids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      parent: json['parent'] as int?,
      text: json['text'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'by': instance.by,
      'id': instance.id,
      'created': instance.created,
      'kids': instance.kids,
      'parent': instance.parent,
      'text': instance.text,
      'type': instance.type,
    };
