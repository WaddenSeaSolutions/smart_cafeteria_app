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
  String get OptionName => throw _privateConstructorUsedError;
  int get Id => throw _privateConstructorUsedError;
  bool get Active => throw _privateConstructorUsedError;
  bool get Deleted => throw _privateConstructorUsedError;

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
  $Res call({String OptionName, int Id, bool Active, bool Deleted});
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
    Object? OptionName = null,
    Object? Id = null,
    Object? Active = null,
    Object? Deleted = null,
  }) {
    return _then(_value.copyWith(
      OptionName: null == OptionName
          ? _value.OptionName
          : OptionName // ignore: cast_nullable_to_non_nullable
              as String,
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      Active: null == Active
          ? _value.Active
          : Active // ignore: cast_nullable_to_non_nullable
              as bool,
      Deleted: null == Deleted
          ? _value.Deleted
          : Deleted // ignore: cast_nullable_to_non_nullable
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
  $Res call({String OptionName, int Id, bool Active, bool Deleted});
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
    Object? OptionName = null,
    Object? Id = null,
    Object? Active = null,
    Object? Deleted = null,
  }) {
    return _then(_$OrderOptionImpl(
      OptionName: null == OptionName
          ? _value.OptionName
          : OptionName // ignore: cast_nullable_to_non_nullable
              as String,
      Id: null == Id
          ? _value.Id
          : Id // ignore: cast_nullable_to_non_nullable
              as int,
      Active: null == Active
          ? _value.Active
          : Active // ignore: cast_nullable_to_non_nullable
              as bool,
      Deleted: null == Deleted
          ? _value.Deleted
          : Deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderOptionImpl implements _OrderOption {
  const _$OrderOptionImpl(
      {required this.OptionName,
      required this.Id,
      required this.Active,
      required this.Deleted});

  factory _$OrderOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderOptionImplFromJson(json);

  @override
  final String OptionName;
  @override
  final int Id;
  @override
  final bool Active;
  @override
  final bool Deleted;

  @override
  String toString() {
    return 'OrderOption(OptionName: $OptionName, Id: $Id, Active: $Active, Deleted: $Deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderOptionImpl &&
            (identical(other.OptionName, OptionName) ||
                other.OptionName == OptionName) &&
            (identical(other.Id, Id) || other.Id == Id) &&
            (identical(other.Active, Active) || other.Active == Active) &&
            (identical(other.Deleted, Deleted) || other.Deleted == Deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, OptionName, Id, Active, Deleted);

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
      {required final String OptionName,
      required final int Id,
      required final bool Active,
      required final bool Deleted}) = _$OrderOptionImpl;

  factory _OrderOption.fromJson(Map<String, dynamic> json) =
      _$OrderOptionImpl.fromJson;

  @override
  String get OptionName;
  @override
  int get Id;
  @override
  bool get Active;
  @override
  bool get Deleted;
  @override
  @JsonKey(ignore: true)
  _$$OrderOptionImplCopyWith<_$OrderOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
