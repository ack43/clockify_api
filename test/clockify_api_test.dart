import 'package:clockify_api/clockify_api.dart';
import 'package:test/test.dart';

import 'package:dotenv/dotenv.dart';

void main() {
  final env = DotEnv(includePlatformEnvironment: true)..load();

  group('A group of tests', () {
    final clockifyApi = ClockifyApi(token: env['CLOCKIFY_API_KEY']!);

    test('First Test. chopper', () {
      expect(clockifyApi.chopper, isNotNull);
    });
  });

  group('A group of failed tests', () {
    final clockifyApi =
        ClockifyApi(token: env['CLOCKIFY_API_KEY'], url: "failed url");

    test('First Test. chopper', () {
      expect(clockifyApi.chopper, isNull);
    });
  });
}
