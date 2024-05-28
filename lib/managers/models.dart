import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class OrderOption with _$OrderOption{
  const factory OrderOption({
    required String OptionName,
    required int Id,
    required bool Active,
    required bool Deleted,
  }) = _OrderOption;

  factory OrderOption.fromJson(Map<String, dynamic> json) =>
      _$OrderOptionFromJson(json);
}
