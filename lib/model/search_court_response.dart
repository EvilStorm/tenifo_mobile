import 'package:freezed_annotation/freezed_annotation.dart';
import 'court.dart';

part 'search_court_response.freezed.dart';
part 'search_court_response.g.dart';

@freezed
abstract class SearchCourtResponse with _$SearchCourtResponse {
  const factory SearchCourtResponse({
    required List<Court> data,
    required int total,
  }) = _SearchCourtResponse;

  factory SearchCourtResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchCourtResponseFromJson(json);
}
