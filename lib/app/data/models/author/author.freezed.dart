// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  String? get about => throw _privateConstructorUsedError;
  int? get created => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  List<int>? get submitted => throw _privateConstructorUsedError;
  int? get delay => throw _privateConstructorUsedError;
  int? get karma => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call(
      {String? about,
      int? created,
      String? id,
      List<int>? submitted,
      int? delay,
      int? karma});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? about = freezed,
    Object? created = freezed,
    Object? id = freezed,
    Object? submitted = freezed,
    Object? delay = freezed,
    Object? karma = freezed,
  }) {
    return _then(_value.copyWith(
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      submitted: freezed == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as int?,
      karma: freezed == karma
          ? _value.karma
          : karma // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$_AuthorCopyWith(_$_Author value, $Res Function(_$_Author) then) =
      __$$_AuthorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? about,
      int? created,
      String? id,
      List<int>? submitted,
      int? delay,
      int? karma});
}

/// @nodoc
class __$$_AuthorCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$_Author>
    implements _$$_AuthorCopyWith<$Res> {
  __$$_AuthorCopyWithImpl(_$_Author _value, $Res Function(_$_Author) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? about = freezed,
    Object? created = freezed,
    Object? id = freezed,
    Object? submitted = freezed,
    Object? delay = freezed,
    Object? karma = freezed,
  }) {
    return _then(_$_Author(
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      submitted: freezed == submitted
          ? _value._submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      delay: freezed == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as int?,
      karma: freezed == karma
          ? _value.karma
          : karma // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Author extends _Author {
  const _$_Author(
      {required this.about,
      required this.created,
      required this.id,
      required final List<int>? submitted,
      required this.delay,
      required this.karma})
      : _submitted = submitted,
        super._();

  factory _$_Author.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorFromJson(json);

  @override
  final String? about;
  @override
  final int? created;
  @override
  final String? id;
  final List<int>? _submitted;
  @override
  List<int>? get submitted {
    final value = _submitted;
    if (value == null) return null;
    if (_submitted is EqualUnmodifiableListView) return _submitted;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? delay;
  @override
  final int? karma;

  @override
  String toString() {
    return 'Author(about: $about, created: $created, id: $id, submitted: $submitted, delay: $delay, karma: $karma)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Author &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._submitted, _submitted) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.karma, karma) || other.karma == karma));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, about, created, id,
      const DeepCollectionEquality().hash(_submitted), delay, karma);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      __$$_AuthorCopyWithImpl<_$_Author>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorToJson(
      this,
    );
  }
}

abstract class _Author extends Author {
  const factory _Author(
      {required final String? about,
      required final int? created,
      required final String? id,
      required final List<int>? submitted,
      required final int? delay,
      required final int? karma}) = _$_Author;
  const _Author._() : super._();

  factory _Author.fromJson(Map<String, dynamic> json) = _$_Author.fromJson;

  @override
  String? get about;
  @override
  int? get created;
  @override
  String? get id;
  @override
  List<int>? get submitted;
  @override
  int? get delay;
  @override
  int? get karma;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      throw _privateConstructorUsedError;
}
