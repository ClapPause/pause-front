// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubGoal _$SubGoalFromJson(Map<String, dynamic> json) {
  return _SubGoal.fromJson(json);
}

/// @nodoc
mixin _$SubGoal {
  int get id => throw _privateConstructorUsedError;
  int get mainGoalId => throw _privateConstructorUsedError;
  String get goal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubGoalCopyWith<SubGoal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubGoalCopyWith<$Res> {
  factory $SubGoalCopyWith(SubGoal value, $Res Function(SubGoal) then) =
      _$SubGoalCopyWithImpl<$Res, SubGoal>;
  @useResult
  $Res call({int id, int mainGoalId, String goal});
}

/// @nodoc
class _$SubGoalCopyWithImpl<$Res, $Val extends SubGoal>
    implements $SubGoalCopyWith<$Res> {
  _$SubGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mainGoalId = null,
    Object? goal = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mainGoalId: null == mainGoalId
          ? _value.mainGoalId
          : mainGoalId // ignore: cast_nullable_to_non_nullable
              as int,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubGoalImplCopyWith<$Res> implements $SubGoalCopyWith<$Res> {
  factory _$$SubGoalImplCopyWith(
          _$SubGoalImpl value, $Res Function(_$SubGoalImpl) then) =
      __$$SubGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int mainGoalId, String goal});
}

/// @nodoc
class __$$SubGoalImplCopyWithImpl<$Res>
    extends _$SubGoalCopyWithImpl<$Res, _$SubGoalImpl>
    implements _$$SubGoalImplCopyWith<$Res> {
  __$$SubGoalImplCopyWithImpl(
      _$SubGoalImpl _value, $Res Function(_$SubGoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mainGoalId = null,
    Object? goal = null,
  }) {
    return _then(_$SubGoalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mainGoalId: null == mainGoalId
          ? _value.mainGoalId
          : mainGoalId // ignore: cast_nullable_to_non_nullable
              as int,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubGoalImpl implements _SubGoal {
  const _$SubGoalImpl(
      {required this.id, required this.mainGoalId, required this.goal});

  factory _$SubGoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubGoalImplFromJson(json);

  @override
  final int id;
  @override
  final int mainGoalId;
  @override
  final String goal;

  @override
  String toString() {
    return 'SubGoal(id: $id, mainGoalId: $mainGoalId, goal: $goal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubGoalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mainGoalId, mainGoalId) ||
                other.mainGoalId == mainGoalId) &&
            (identical(other.goal, goal) || other.goal == goal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, mainGoalId, goal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubGoalImplCopyWith<_$SubGoalImpl> get copyWith =>
      __$$SubGoalImplCopyWithImpl<_$SubGoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubGoalImplToJson(
      this,
    );
  }
}

abstract class _SubGoal implements SubGoal {
  const factory _SubGoal(
      {required final int id,
      required final int mainGoalId,
      required final String goal}) = _$SubGoalImpl;

  factory _SubGoal.fromJson(Map<String, dynamic> json) = _$SubGoalImpl.fromJson;

  @override
  int get id;
  @override
  int get mainGoalId;
  @override
  String get goal;
  @override
  @JsonKey(ignore: true)
  _$$SubGoalImplCopyWith<_$SubGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
