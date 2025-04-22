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
        apiKey: apiKey, interceptors: [ResponseLoggingInterceptor()]);
  });

  group('Projects API tests', () {
    test('should retrieve projects successfully', () async {
      final response = await clockifyApi.workspaces.projects(workspaceId);
      expect(response.isSuccessful, true);
      expect(response.body, isNotEmpty);
    });

    test('should retrieve projects with optional parameters', () async {
      final response = await clockifyApi.workspaces.projects(
        workspaceId,
        // name: 'Software Development',
        // archived: 'false',
        // billable: 'true',
        sortColumn: 'NAME',
        sortOrder: 'ASCENDING',
        page: '1',
        pageSize: '50',
      );
      // response.body?.forEach((pr) => print('${pr.id} - ${pr.name}'));
      expect(response.isSuccessful, true);
      expect(response.body, isNotEmpty);
    });

    test('should return an empty list if not successful', () async {
      final emptyWorkspaceId = 'invalidWorkspaceId';
      final response = await clockifyApi.workspaces
          .projects(emptyWorkspaceId)
          .then((response) => response.body ?? []);
      ;
      expect(response, isEmpty);
    });
  });
}
