import 'package:dio/dio.dart';

Dio createDioClient() {
  final dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      contentType: 'application/json',
    ),
  );

  // 예시: 로깅 인터셉터 추가 가능
  dio.interceptors.add(LogInterceptor(responseBody: true));

  return dio;
}
