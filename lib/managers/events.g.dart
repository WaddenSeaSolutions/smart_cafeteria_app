// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationActionImpl _$$AuthenticationActionImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationActionImpl(
      action: json['action'] as String? ?? AuthenticationAction.name,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AuthenticationActionImplToJson(
        _$AuthenticationActionImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'token': instance.token,
    };

_$OrderCreateActionImpl _$$OrderCreateActionImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderCreateActionImpl(
      action: json['action'] as String? ?? OrderCreateAction.name,
      order: (json['order'] as List<dynamic>)
          .map((e) => OrderOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderCreateActionImplToJson(
        _$OrderCreateActionImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'order': instance.order,
    };
