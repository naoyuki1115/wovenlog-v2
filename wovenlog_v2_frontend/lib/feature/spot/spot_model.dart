import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'spot_model.freezed.dart';

@freezed
class Spot with _$Spot {
  const factory Spot({
    @Default('') String id,
    @Default('') String name,
    @Default('') String address,
    @Default(0.0) double latitude,
    @Default(0.0) double longitude,
    @Default('') String url,
    @Default('') String image,
    required DateTime createdDate,
    @Default('') String categoryId,
    @Default('') String description,
  }) = _Spot;

  const Spot._();
}
