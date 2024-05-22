// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderOption _$OrderOptionFromJson(Map<String, dynamic> json) {
  return _OrderOption.fromJson(json);
}

/// @nodoc
mixin _$OrderOption {
  String get optionName => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderOptionCopyWith<OrderOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderOptionCopyWith<$Res> {
  factory $OrderOptionCopyWith(
          OrderOption value, $Res Function(OrderOption) then) =
      _$OrderOptionCopyWithImpl<$Res, OrderOption>;
  @useResult
  $Res call({String optionName, int id, bool active, bool deleted});
}

/// @nodoc
class _$OrderOptionCopyWithImpl<$Res, $Val extends OrderOption>
    implements $OrderOptionCopyWith<$Res> {
  _$OrderOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionName = null,
    Object? id = null,
    Object? active = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      optionName: null == optionName
          ? _value.optionName
          : optionName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderOptionImplCopyWith<$Res>
    implements $OrderOptionCopyWith<$Res> {
  factory _$$OrderOptionImplCopyWith(
          _$OrderOptionImpl value, $Res Function(_$OrderOptionImpl) then) =
      __$$OrderOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String optionName, int id, bool active, bool deleted});
}

/// @nodoc
class __$$OrderOptionImplCopyWithImpl<$Res>
    extends _$OrderOptionCopyWithImpl<$Res, _$OrderOptionImpl>
    implements _$$OrderOptionImplCopyWith<$Res> {
  __$$OrderOptionImplCopyWithImpl(
      _$OrderOptionImpl _value, $Res Function(_$OrderOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionName = null,
    Object? id = null,
    Object? active = null,
    Object? deleted = null,
  }) {
    return _then(_$OrderOptionImpl(
      optionName: null == optionName
          ? _value.optionName
          : optionName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderOptionImpl implements _OrderOption {
  const _$OrderOptionImpl(
      {required this.optionName,
      required this.id,
      required this.active,
      required this.deleted});

  factory _$OrderOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderOptionImplFromJson(json);

  @override
  final String optionName;
  @override
  final int id;
  @override
  final bool active;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'OrderOption(optionName: $optionName, id: $id, active: $active, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderOptionImpl &&
            (identical(other.optionName, optionName) ||
                other.optionName == optionName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, optionName, id, active, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderOptionImplCopyWith<_$OrderOptionImpl> get copyWith =>
      __$$OrderOptionImplCopyWithImpl<_$OrderOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderOptionImplToJson(
      this,
    );
  }
}

abstract class _OrderOption implements OrderOption {
  const factory _OrderOption(
      {required final String optionName,
      required final int id,
      required final bool active,
      required final bool deleted}) = _$OrderOptionImpl;

  factory _OrderOption.fromJson(Map<String, dynamic> json) =
      _$OrderOptionImpl.fromJson;

  @override
  String get optionName;
  @override
  int get id;
  @override
  bool get active;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$OrderOptionImplCopyWith<_$OrderOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
