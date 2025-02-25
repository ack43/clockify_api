import 'package:clockify_api/clockify_api.dart';
import 'package:test/test.dart';
import 'base.dart';

import 'package:dotenv/dotenv.dart';

void main() {
  final env = DotEnv(includePlatformEnvironment: true)..load();

  group('A group of tests', () {
    final clockifyApi = ClockifyApi(
        apiKey: env['CLOCKIFY_API_KEY']!,
        interceptors: [ResponseLoggingInterceptor()]);

    test('First Test. chopper', () {
      expect(clockifyApi.chopper, isNotNull);
    });
    test('First Test. workspaces list', () async {
      // Check if the response was successful
      await clockifyApi.serviceWorkspaces.getWorkspaces().then((workspaces) {
        print('workspaces: $workspaces');
      });
    });
  });

  // group('A group of failed tests', () {
  //   final clockifyApi =
  //       ClockifyApi(apiKey: env['CLOCKIFY_API_KEY'], url: "failed url");

  //   test('First Test. chopper', () {
  //     expect(clockifyApi.chopper, isNull);
  //   });
  // });
}
