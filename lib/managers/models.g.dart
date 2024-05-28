// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderOptionImpl _$$OrderOptionImplFromJson(Map<String, dynamic> json) =>
    _$OrderOptionImpl(
      OptionName: json['OptionName'] as String,
      Id: (json['Id'] as num).toInt(),
      Active: json['Active'] as bool,
      Deleted: json['Deleted'] as bool,
    );

Map<String, dynamic> _$$OrderOptionImplToJson(_$OrderOptionImpl instance) =>
    <String, dynamic>{
      'OptionName': instance.OptionName,
      'Id': instance.Id,
      'Active': instance.Active,
      'Deleted': instance.Deleted,
    };
