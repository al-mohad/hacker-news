// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String? get by => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  int? get created => throw _privateConstructorUsedError;
  List<int>? get kids => throw _privateConstructorUsedError;
  int? get parent => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {String? by,
      dynamic id,
      int? created,
      List<int>? kids,
      int? parent,
      String? text,
      String? type});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? by = freezed,
    Object? id = freezed,
    Object? created = freezed,
    Object? kids = freezed,
    Object? parent = freezed,
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      by: freezed == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      kids: freezed == kids
          ? _value.kids
          : kids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? by,
      dynamic id,
      int? created,
      List<int>? kids,
      int? parent,
      String? text,
      String? type});
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? by = freezed,
    Object? id = freezed,
    Object? created = freezed,
    Object? kids = freezed,
    Object? parent = freezed,
    Object? text = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Comment(
      by: freezed == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      kids: freezed == kids
          ? _value._kids
          : kids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment extends _Comment {
  const _$_Comment(
      {required this.by,
      required this.id,
      required this.created,
      required final List<int>? kids,
      required this.parent,
      required this.text,
      required this.type})
      : _kids = kids,
        super._();

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  final String? by;
  @override
  final dynamic id;
  @override
  final int? created;
  final List<int>? _kids;
  @override
  List<int>? get kids {
    final value = _kids;
    if (value == null) return null;
    if (_kids is EqualUnmodifiableListView) return _kids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? parent;
  @override
  final String? text;
  @override
  final String? type;

  @override
  String toString() {
    return 'Comment(by: $by, id: $id, created: $created, kids: $kids, parent: $parent, text: $text, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.by, by) || other.by == by) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(other._kids, _kids) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      by,
      const DeepCollectionEquality().hash(id),
      created,
      const DeepCollectionEquality().hash(_kids),
      parent,
      text,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment extends Comment {
  const factory _Comment(
      {required final String? by,
      required final dynamic id,
      required final int? created,
      required final List<int>? kids,
      required final int? parent,
      required final String? text,
      required final String? type}) = _$_Comment;
  const _Comment._() : super._();

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  String? get by;
  @override
  dynamic get id;
  @override
  int? get created;
  @override
  List<int>? get kids;
  @override
  int? get parent;
  @override
  String? get text;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
