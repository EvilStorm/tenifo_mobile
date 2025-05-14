// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'court.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Court _$CourtFromJson(Map<String, dynamic> json) => _Court(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  address: json['address'] as String,
  cortReservationInfos:
      (json['cortReservationInfos'] as List<dynamic>)
          .map((e) => CourtReservationInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CourtToJson(_Court instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'address': instance.address,
  'cortReservationInfos': instance.cortReservationInfos,
};

_CourtReservationInfo _$CourtReservationInfoFromJson(
  Map<String, dynamic> json,
) => _CourtReservationInfo(
  id: (json['id'] as num).toInt(),
  cort: json['cort'] as String,
  cortType: json['cortType'] as String,
  year: json['year'] as String,
  month: json['month'] as String,
  timeInfo:
      (json['timeInfo'] as List<dynamic>)
          .map((e) => TimeInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$CourtReservationInfoToJson(
  _CourtReservationInfo instance,
) => <String, dynamic>{
  'id': instance.id,
  'cort': instance.cort,
  'cortType': instance.cortType,
  'year': instance.year,
  'month': instance.month,
  'timeInfo': instance.timeInfo,
};

_TimeInfo _$TimeInfoFromJson(Map<String, dynamic> json) => _TimeInfo(
  id: (json['id'] as num).toInt(),
  day: json['day'] as String,
  times:
      (json['times'] as List<dynamic>).map((e) => (e as num).toInt()).toList(),
);

Map<String, dynamic> _$TimeInfoToJson(_TimeInfo instance) => <String, dynamic>{
  'id': instance.id,
  'day': instance.day,
  'times': instance.times,
};
