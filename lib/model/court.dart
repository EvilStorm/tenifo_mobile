import 'package:freezed_annotation/freezed_annotation.dart';

part 'court.freezed.dart';
part 'court.g.dart';

@Freezed(fromJson: true, toJson: true)
abstract class Court with _$Court {
  const factory Court({
    required int id,
    required String name,
    required String address,
    required List<CourtReservationInfo> cortReservationInfos,
  }) = _Court;

  factory Court.fromJson(Map<String, dynamic> json) => _$CourtFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
abstract class CourtReservationInfo with _$CourtReservationInfo {
  const factory CourtReservationInfo({
    required int id,
    required String cort,
    required String cortType,
    required String year,
    required String month,
    required List<TimeInfo> timeInfo,
  }) = _CourtReservationInfo;

  factory CourtReservationInfo.fromJson(Map<String, dynamic> json) =>
      _$CourtReservationInfoFromJson(json);
}

@Freezed(fromJson: true, toJson: true)
abstract class TimeInfo with _$TimeInfo {
  const factory TimeInfo({
    required int id,
    required String day,
    required List<int> times,
  }) = _TimeInfo;

  factory TimeInfo.fromJson(Map<String, dynamic> json) =>
      _$TimeInfoFromJson(json);
}
