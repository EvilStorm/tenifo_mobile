import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../model/court.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "http://localhost:3001")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/court")
  Future<List<Court>> getCourts();
}
