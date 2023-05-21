// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Author _$$_AuthorFromJson(Map<String, dynamic> json) => _$_Author(
      about: json['about'] as String?,
      created: json['created'] as int?,
      id: json['id'] as String?,
      submitted:
          (json['submitted'] as List<dynamic>?)?.map((e) => e as int).toList(),
      delay: json['delay'] as int?,
      karma: json['karma'] as int?,
    );

Map<String, dynamic> _$$_AuthorToJson(_$_Author instance) => <String, dynamic>{
      'about': instance.about,
      'created': instance.created,
      'id': instance.id,
      'submitted': instance.submitted,
      'delay': instance.delay,
      'karma': instance.karma,
    };
