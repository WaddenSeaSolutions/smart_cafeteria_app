import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class OrderOption with _$OrderOption{
  const factory OrderOption({
    required String optionName,
    required int id,
    required bool active,
    required bool deleted,
  }) = _OrderOption;

  factory OrderOption.fromJson(Map<String, dynamic> json) =>
      _$OrderOptionFromJson(json);
}
