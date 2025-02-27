import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart' as dotenv;
import 'package:clockify_api/clockify_api.dart';
import 'base.dart';

void main() {
  final env = dotenv.DotEnv(includePlatformEnvironment: true)
    ..load(['test/.env']);
  final apiKey = env['CLOCKIFY_API_KEY'];
  final workspaceId = env['WORKSPACE_ID']!;

  late ClockifyApi clockifyApi;

  setUp(() {
    clockifyApi = ClockifyApi(
      apiKey: apiKey,
      interceptors: [ResponseLoggingInterceptor()],
    );
  });

  group('Clients API tests', () {
    test('should retrieve clients successfully', () async {
      final response =
          await clockifyApi.serviceWorkspaces.getWorkspaceClients(workspaceId);
      expect(response.isSuccessful, true);
      expect(response.body, isNotEmpty);
    });

    test('should retrieve clients with optional parameters', () async {
      final response = await clockifyApi.serviceWorkspaces.getWorkspaceClients(
        workspaceId,
        // name: 'Client X',
        sortColumn: 'NAME',
        sortOrder: 'ASCENDING',
        page: '1',
        pageSize: '50',
        // archived: false,
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotEmpty);
    });

    test('should return an empty list if not successful', () async {
      final emptyWorkspaceId = 'invalidWorkspaceId';
      final response = await clockifyApi.serviceWorkspaces
          .getWorkspaceClients(emptyWorkspaceId)
          .then((value) => value.body ?? []);
      expect(response, isEmpty);
    });
  });
}
