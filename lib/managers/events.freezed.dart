// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticationAction _$AuthenticationActionFromJson(Map<String, dynamic> json) {
  return _AuthenticationAction.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationAction {
  String get action => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationActionCopyWith<AuthenticationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationActionCopyWith<$Res> {
  factory $AuthenticationActionCopyWith(AuthenticationAction value,
          $Res Function(AuthenticationAction) then) =
      _$AuthenticationActionCopyWithImpl<$Res, AuthenticationAction>;
  @useResult
  $Res call({String action, String token});
}

/// @nodoc
class _$AuthenticationActionCopyWithImpl<$Res,
        $Val extends AuthenticationAction>
    implements $AuthenticationActionCopyWith<$Res> {
  _$AuthenticationActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationActionImplCopyWith<$Res>
    implements $AuthenticationActionCopyWith<$Res> {
  factory _$$AuthenticationActionImplCopyWith(_$AuthenticationActionImpl value,
          $Res Function(_$AuthenticationActionImpl) then) =
      __$$AuthenticationActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String action, String token});
}

/// @nodoc
class __$$AuthenticationActionImplCopyWithImpl<$Res>
    extends _$AuthenticationActionCopyWithImpl<$Res, _$AuthenticationActionImpl>
    implements _$$AuthenticationActionImplCopyWith<$Res> {
  __$$AuthenticationActionImplCopyWithImpl(_$AuthenticationActionImpl _value,
      $Res Function(_$AuthenticationActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? token = null,
  }) {
    return _then(_$AuthenticationActionImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationActionImpl implements _AuthenticationAction {
  const _$AuthenticationActionImpl(
      {this.action = AuthenticationAction.name, required this.token});

  factory _$AuthenticationActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationActionImplFromJson(json);

  @override
  @JsonKey()
  final String action;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthenticationAction(action: $action, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationActionImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, action, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationActionImplCopyWith<_$AuthenticationActionImpl>
      get copyWith =>
          __$$AuthenticationActionImplCopyWithImpl<_$AuthenticationActionImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationActionImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationAction implements AuthenticationAction {
  const factory _AuthenticationAction(
      {final String action,
      required final String token}) = _$AuthenticationActionImpl;

  factory _AuthenticationAction.fromJson(Map<String, dynamic> json) =
      _$AuthenticationActionImpl.fromJson;

  @override
  String get action;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationActionImplCopyWith<_$AuthenticationActionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrderCreateAction _$OrderCreateActionFromJson(Map<String, dynamic> json) {
  return _OrderCreateAction.fromJson(json);
}

/// @nodoc
mixin _$OrderCreateAction {
  String get action => throw _privateConstructorUsedError;
  List<int> get OrderOptionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCreateActionCopyWith<OrderCreateAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCreateActionCopyWith<$Res> {
  factory $OrderCreateActionCopyWith(
          OrderCreateAction value, $Res Function(OrderCreateAction) then) =
      _$OrderCreateActionCopyWithImpl<$Res, OrderCreateAction>;
  @useResult
  $Res call({String action, List<int> OrderOptionId});
}

/// @nodoc
class _$OrderCreateActionCopyWithImpl<$Res, $Val extends OrderCreateAction>
    implements $OrderCreateActionCopyWith<$Res> {
  _$OrderCreateActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? OrderOptionId = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      OrderOptionId: null == OrderOptionId
          ? _value.OrderOptionId
          : OrderOptionId // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderCreateActionImplCopyWith<$Res>
    implements $OrderCreateActionCopyWith<$Res> {
  factory _$$OrderCreateActionImplCopyWith(_$OrderCreateActionImpl value,
          $Res Function(_$OrderCreateActionImpl) then) =
      __$$OrderCreateActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String action, List<int> OrderOptionId});
}

/// @nodoc
class __$$OrderCreateActionImplCopyWithImpl<$Res>
    extends _$OrderCreateActionCopyWithImpl<$Res, _$OrderCreateActionImpl>
    implements _$$OrderCreateActionImplCopyWith<$Res> {
  __$$OrderCreateActionImplCopyWithImpl(_$OrderCreateActionImpl _value,
      $Res Function(_$OrderCreateActionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? OrderOptionId = null,
  }) {
    return _then(_$OrderCreateActionImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      OrderOptionId: null == OrderOptionId
          ? _value._OrderOptionId
          : OrderOptionId // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderCreateActionImpl implements _OrderCreateAction {
  const _$OrderCreateActionImpl(
      {this.action = OrderCreateAction.name,
      required final List<int> OrderOptionId})
      : _OrderOptionId = OrderOptionId;

  factory _$OrderCreateActionImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderCreateActionImplFromJson(json);

  @override
  @JsonKey()
  final String action;
  final List<int> _OrderOptionId;
  @override
  List<int> get OrderOptionId {
    if (_OrderOptionId is EqualUnmodifiableListView) return _OrderOptionId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_OrderOptionId);
  }

  @override
  String toString() {
    return 'OrderCreateAction(action: $action, OrderOptionId: $OrderOptionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCreateActionImpl &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality()
                .equals(other._OrderOptionId, _OrderOptionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, action, const DeepCollectionEquality().hash(_OrderOptionId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreateActionImplCopyWith<_$OrderCreateActionImpl> get copyWith =>
      __$$OrderCreateActionImplCopyWithImpl<_$OrderCreateActionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderCreateActionImplToJson(
      this,
    );
  }
}

abstract class _OrderCreateAction implements OrderCreateAction {
  const factory _OrderCreateAction(
      {final String action,
      required final List<int> OrderOptionId}) = _$OrderCreateActionImpl;

  factory _OrderCreateAction.fromJson(Map<String, dynamic> json) =
      _$OrderCreateActionImpl.fromJson;

  @override
  String get action;
  @override
  List<int> get OrderOptionId;
  @override
  @JsonKey(ignore: true)
  _$$OrderCreateActionImplCopyWith<_$OrderCreateActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderOptionsEvent _$OrderOptionsEventFromJson(Map<String, dynamic> json) {
  return _OrderOptionsEvent.fromJson(json);
}

/// @nodoc
mixin _$OrderOptionsEvent {
  String get action => throw _privateConstructorUsedError;
  List<OrderOption> get orderOptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderOptionsEventCopyWith<OrderOptionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderOptionsEventCopyWith<$Res> {
  factory $OrderOptionsEventCopyWith(
          OrderOptionsEvent value, $Res Function(OrderOptionsEvent) then) =
      _$OrderOptionsEventCopyWithImpl<$Res, OrderOptionsEvent>;
  @useResult
  $Res call({String action, List<OrderOption> orderOptions});
}

/// @nodoc
class _$OrderOptionsEventCopyWithImpl<$Res, $Val extends OrderOptionsEvent>
    implements $OrderOptionsEventCopyWith<$Res> {
  _$OrderOptionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? orderOptions = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      orderOptions: null == orderOptions
          ? _value.orderOptions
          : orderOptions // ignore: cast_nullable_to_non_nullable
              as List<OrderOption>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderOptionsEventImplCopyWith<$Res>
    implements $OrderOptionsEventCopyWith<$Res> {
  factory _$$OrderOptionsEventImplCopyWith(_$OrderOptionsEventImpl value,
          $Res Function(_$OrderOptionsEventImpl) then) =
      __$$OrderOptionsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String action, List<OrderOption> orderOptions});
}

/// @nodoc
class __$$OrderOptionsEventImplCopyWithImpl<$Res>
    extends _$OrderOptionsEventCopyWithImpl<$Res, _$OrderOptionsEventImpl>
    implements _$$OrderOptionsEventImplCopyWith<$Res> {
  __$$OrderOptionsEventImplCopyWithImpl(_$OrderOptionsEventImpl _value,
      $Res Function(_$OrderOptionsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? orderOptions = null,
  }) {
    return _then(_$OrderOptionsEventImpl(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      orderOptions: null == orderOptions
          ? _value._orderOptions
          : orderOptions // ignore: cast_nullable_to_non_nullable
              as List<OrderOption>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderOptionsEventImpl implements _OrderOptionsEvent {
  const _$OrderOptionsEventImpl(
      {this.action = OrderOptionsEvent.name,
      required final List<OrderOption> orderOptions})
      : _orderOptions = orderOptions;

  factory _$OrderOptionsEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderOptionsEventImplFromJson(json);

  @override
  @JsonKey()
  final String action;
  final List<OrderOption> _orderOptions;
  @override
  List<OrderOption> get orderOptions {
    if (_orderOptions is EqualUnmodifiableListView) return _orderOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderOptions);
  }

  @override
  String toString() {
    return 'OrderOptionsEvent(action: $action, orderOptions: $orderOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderOptionsEventImpl &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality()
                .equals(other._orderOptions, _orderOptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, action, const DeepCollectionEquality().hash(_orderOptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderOptionsEventImplCopyWith<_$OrderOptionsEventImpl> get copyWith =>
      __$$OrderOptionsEventImplCopyWithImpl<_$OrderOptionsEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderOptionsEventImplToJson(
      this,
    );
  }
}

abstract class _OrderOptionsEvent implements OrderOptionsEvent {
  const factory _OrderOptionsEvent(
      {final String action,
      required final List<OrderOption> orderOptions}) = _$OrderOptionsEventImpl;

  factory _OrderOptionsEvent.fromJson(Map<String, dynamic> json) =
      _$OrderOptionsEventImpl.fromJson;

  @override
  String get action;
  @override
  List<OrderOption> get orderOptions;
  @override
  @JsonKey(ignore: true)
  _$$OrderOptionsEventImplCopyWith<_$OrderOptionsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
