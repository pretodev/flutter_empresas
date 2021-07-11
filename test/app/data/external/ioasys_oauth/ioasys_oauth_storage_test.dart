import 'package:empresas_flutter/app/data/external/ioasys_oauth/ioasys_oauth_storage.dart';
import 'package:empresas_flutter/app/data/external/ioasys_oauth/iosys_aouth_token.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

void main() {
  group('Ioasys Oauth Storage', () {
    late FlutterSecureStorage secureStorage;
    late IoasysOAuthStorage storage;
    final token =
        IoasysOAuthToken(accessToken: 'token', client: 'client', uid: 'uid');

    setUp(() {
      secureStorage = MockFlutterSecureStorage();
      storage = IoasysOAuthStorage(storage: secureStorage);
    });

    test('should return null on first use', () async {
      when(() => secureStorage.read(key: any(named: 'key')))
          .thenAnswer((_) async => null);
      final token = await storage.fetch();
      expect(token, null);
    });

    test('should save token', () async {
      when(
        () => secureStorage.write(
          key: any(named: 'key'),
          value: any(named: 'value'),
        ),
      ).thenAnswer((_) async => token);
      await storage.save(token);
      verify(
        () => secureStorage.write(
          key: any(named: 'key'),
          value: any(named: 'value'),
        ),
      ).called(3);
    });

    test('should clear token', () async {
      when(() => secureStorage.deleteAll()).thenAnswer((_) async {});
      await storage.clear();
      verify(() => secureStorage.deleteAll()).called(1);
    });
  });
}
