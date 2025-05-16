import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../model/court.dart';
import '../model/search_court_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "http://192.168.0.13:3001")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/court")
  Future<List<Court>> getCourts();

  @GET("/court/search")
  Future<SearchCourtResponse> searchCourts({
    @Query('start') required int start,
    @Query('end') required int end,
    @Query('dayStart') int? dayStart,
    @Query('dayEnd') int? dayEnd,
    @Query('matchType') required int matchType,
  });
}
