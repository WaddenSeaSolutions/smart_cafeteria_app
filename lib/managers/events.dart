import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_cafeteria_app/managers/models.dart';

part 'events.freezed.dart';
part 'events.g.dart';

sealed class BaseEvent {}

abstract class ClientEvent extends BaseEvent {
  Map<String, dynamic> toJson();
}

@freezed
class AuthenticationAction extends ClientEvent
    with _$AuthenticationAction {
  static const String name = "authentication";

  const factory AuthenticationAction({
   @Default(AuthenticationAction.name) String action,
    required String token,
  }) = _AuthenticationAction;

  factory AuthenticationAction.fromJson(
      Map<String, Object?> json) =>
      _$AuthenticationActionFromJson(json);
}

@freezed
class OrderCreateAction extends ClientEvent
    with _$OrderCreateAction {
  static const String name = "orderCreateHandler";

  const factory OrderCreateAction({
    @Default(OrderCreateAction.name) String action,
    required List<int> OrderOptionId,
  }) = _OrderCreateAction;

  factory OrderCreateAction.fromJson(
      Map<String, Object?> json) =>
      _$OrderCreateActionFromJson(json);
}

abstract class ServerEvent extends BaseEvent {
}

@freezed
class OrderOptionsEvent extends ServerEvent
    with _$OrderOptionsEvent {
  static const String name = "orderOptions";

  const factory OrderOptionsEvent({
    @Default(OrderOptionsEvent.name) String action,
    required List<OrderOption> orderOptions,
  }) = _OrderOptionsEvent;

  factory OrderOptionsEvent.fromJson(
      Map<String, Object?> json) =>
      _$OrderOptionsEventFromJson(json);
}