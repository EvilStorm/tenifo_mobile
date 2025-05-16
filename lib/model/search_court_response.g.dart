// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_court_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchCourtResponse _$SearchCourtResponseFromJson(Map<String, dynamic> json) =>
    _SearchCourtResponse(
      data:
          (json['data'] as List<dynamic>)
              .map((e) => Court.fromJson(e as Map<String, dynamic>))
              .toList(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$SearchCourtResponseToJson(
  _SearchCourtResponse instance,
) => <String, dynamic>{'data': instance.data, 'total': instance.total};
