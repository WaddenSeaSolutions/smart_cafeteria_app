// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderOptionImpl _$$OrderOptionImplFromJson(Map<String, dynamic> json) =>
    _$OrderOptionImpl(
      optionName: json['optionName'] as String,
      id: (json['id'] as num).toInt(),
      active: json['active'] as bool,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$$OrderOptionImplToJson(_$OrderOptionImpl instance) =>
    <String, dynamic>{
      'optionName': instance.optionName,
      'id': instance.id,
      'active': instance.active,
      'deleted': instance.deleted,
    };
