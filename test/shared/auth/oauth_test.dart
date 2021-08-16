import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  test('OAuthInterceptor', () async {
    final dio = Dio();
    dio.options.baseUrl = 'test';
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      return handler
          .resolve(Response(requestOptions: options, data: 'fake data'));
    }));
    Response response = await dio.get('/test');
    print(response.data);
    expect(response.data, 'fake data');
  });
}
