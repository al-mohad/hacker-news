// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoryListCount _$StoryListCountFromJson(Map<String, dynamic> json) {
  return _StoryListCount.fromJson(json);
}

/// @nodoc
mixin _$StoryListCount {
  List<int> get counts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryListCountCopyWith<StoryListCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryListCountCopyWith<$Res> {
  factory $StoryListCountCopyWith(
          StoryListCount value, $Res Function(StoryListCount) then) =
      _$StoryListCountCopyWithImpl<$Res, StoryListCount>;
  @useResult
  $Res call({List<int> counts});
}

/// @nodoc
class _$StoryListCountCopyWithImpl<$Res, $Val extends StoryListCount>
    implements $StoryListCountCopyWith<$Res> {
  _$StoryListCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counts = null,
  }) {
    return _then(_value.copyWith(
      counts: null == counts
          ? _value.counts
          : counts // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StoryListCountCopyWith<$Res>
    implements $StoryListCountCopyWith<$Res> {
  factory _$$_StoryListCountCopyWith(
          _$_StoryListCount value, $Res Function(_$_StoryListCount) then) =
      __$$_StoryListCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> counts});
}

/// @nodoc
class __$$_StoryListCountCopyWithImpl<$Res>
    extends _$StoryListCountCopyWithImpl<$Res, _$_StoryListCount>
    implements _$$_StoryListCountCopyWith<$Res> {
  __$$_StoryListCountCopyWithImpl(
      _$_StoryListCount _value, $Res Function(_$_StoryListCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counts = null,
  }) {
    return _then(_$_StoryListCount(
      counts: null == counts
          ? _value._counts
          : counts // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoryListCount extends _StoryListCount {
  const _$_StoryListCount({required final List<int> counts})
      : _counts = counts,
        super._();

  factory _$_StoryListCount.fromJson(Map<String, dynamic> json) =>
      _$$_StoryListCountFromJson(json);

  final List<int> _counts;
  @override
  List<int> get counts {
    if (_counts is EqualUnmodifiableListView) return _counts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_counts);
  }

  @override
  String toString() {
    return 'StoryListCount(counts: $counts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StoryListCount &&
            const DeepCollectionEquality().equals(other._counts, _counts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_counts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoryListCountCopyWith<_$_StoryListCount> get copyWith =>
      __$$_StoryListCountCopyWithImpl<_$_StoryListCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoryListCountToJson(
      this,
    );
  }
}

abstract class _StoryListCount extends StoryListCount {
  const factory _StoryListCount({required final List<int> counts}) =
      _$_StoryListCount;
  const _StoryListCount._() : super._();

  factory _StoryListCount.fromJson(Map<String, dynamic> json) =
      _$_StoryListCount.fromJson;

  @override
  List<int> get counts;
  @override
  @JsonKey(ignore: true)
  _$$_StoryListCountCopyWith<_$_StoryListCount> get copyWith =>
      throw _privateConstructorUsedError;
}
