// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ask _$AskFromJson(Map<String, dynamic> json) {
  return _Ask.fromJson(json);
}

/// @nodoc
mixin _$Ask {
  String? get by => throw _privateConstructorUsedError;
  int? get descendants => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<int>? get kids => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AskCopyWith<Ask> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskCopyWith<$Res> {
  factory $AskCopyWith(Ask value, $Res Function(Ask) then) =
      _$AskCopyWithImpl<$Res, Ask>;
  @useResult
  $Res call(
      {String? by,
      int? descendants,
      int? id,
      List<int>? kids,
      int? score,
      String? text,
      int? time,
      String? title,
      String? type});
}

/// @nodoc
class _$AskCopyWithImpl<$Res, $Val extends Ask> implements $AskCopyWith<$Res> {
  _$AskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? by = freezed,
    Object? descendants = freezed,
    Object? id = freezed,
    Object? kids = freezed,
    Object? score = freezed,
    Object? text = freezed,
    Object? time = freezed,
    Object? title = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      by: freezed == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String?,
      descendants: freezed == descendants
          ? _value.descendants
          : descendants // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kids: freezed == kids
          ? _value.kids
          : kids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AskCopyWith<$Res> implements $AskCopyWith<$Res> {
  factory _$$_AskCopyWith(_$_Ask value, $Res Function(_$_Ask) then) =
      __$$_AskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? by,
      int? descendants,
      int? id,
      List<int>? kids,
      int? score,
      String? text,
      int? time,
      String? title,
      String? type});
}

/// @nodoc
class __$$_AskCopyWithImpl<$Res> extends _$AskCopyWithImpl<$Res, _$_Ask>
    implements _$$_AskCopyWith<$Res> {
  __$$_AskCopyWithImpl(_$_Ask _value, $Res Function(_$_Ask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? by = freezed,
    Object? descendants = freezed,
    Object? id = freezed,
    Object? kids = freezed,
    Object? score = freezed,
    Object? text = freezed,
    Object? time = freezed,
    Object? title = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_Ask(
      by: freezed == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String?,
      descendants: freezed == descendants
          ? _value.descendants
          : descendants // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      kids: freezed == kids
          ? _value._kids
          : kids // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$_Ask extends _Ask {
  const _$_Ask(
      {required this.by,
      required this.descendants,
      required this.id,
      required final List<int>? kids,
      required this.score,
      required this.text,
      required this.time,
      required this.title,
      required this.type})
      : _kids = kids,
        super._();

  factory _$_Ask.fromJson(Map<String, dynamic> json) => _$$_AskFromJson(json);

  @override
  final String? by;
  @override
  final int? descendants;
  @override
  final int? id;
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
  final int? score;
  @override
  final String? text;
  @override
  final int? time;
  @override
  final String? title;
  @override
  final String? type;

  @override
  String toString() {
    return 'Ask(by: $by, descendants: $descendants, id: $id, kids: $kids, score: $score, text: $text, time: $time, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ask &&
            (identical(other.by, by) || other.by == by) &&
            (identical(other.descendants, descendants) ||
                other.descendants == descendants) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._kids, _kids) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      by,
      descendants,
      id,
      const DeepCollectionEquality().hash(_kids),
      score,
      text,
      time,
      title,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AskCopyWith<_$_Ask> get copyWith =>
      __$$_AskCopyWithImpl<_$_Ask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AskToJson(
      this,
    );
  }
}

abstract class _Ask extends Ask {
  const factory _Ask(
      {required final String? by,
      required final int? descendants,
      required final int? id,
      required final List<int>? kids,
      required final int? score,
      required final String? text,
      required final int? time,
      required final String? title,
      required final String? type}) = _$_Ask;
  const _Ask._() : super._();

  factory _Ask.fromJson(Map<String, dynamic> json) = _$_Ask.fromJson;

  @override
  String? get by;
  @override
  int? get descendants;
  @override
  int? get id;
  @override
  List<int>? get kids;
  @override
  int? get score;
  @override
  String? get text;
  @override
  int? get time;
  @override
  String? get title;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_AskCopyWith<_$_Ask> get copyWith => throw _privateConstructorUsedError;
}
