import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart' as dotenv;
import 'package:clockify_api/clockify_api.dart';
import 'base.dart';

void main() {
  final env = dotenv.DotEnv(includePlatformEnvironment: true)
    ..load(['test/.env']);
  final apiKey = env['CLOCKIFY_API_KEY'];
  final workspaceId = env['WORKSPACE_ID']!;
  final projectId = env['PROJECT_ID'];
  final taskId = env['TASK_ID'];

  late ClockifyApi clockifyApi;

  setUp(() {
    clockifyApi = ClockifyApi(
      apiKey: apiKey,
      interceptors: [ResponseLoggingInterceptor()],
    );
  });

  group('Tasks API tests', () {
    test('should retrieve tasks for a project', () async {
      if (projectId == null || projectId.isEmpty) return;
      final response = await clockifyApi
          .workspace(workspaceId)
          .project(projectId)
          .tasks
          .get();
      print('Retrieve tasks for project response: ${response.body}');
      expect(response.isSuccessful, true);
      expect(response.body, isNotEmpty);
    });

    test('should retrieve tasks with optional parameters', () async {
      if (projectId == null || projectId.isEmpty) return;
      final response =
          await clockifyApi.workspace(workspaceId).project(projectId).tasks.get(
                name: 'Planning',
                strictNameSearch: false,
                isActive: true,
                page: 1,
                pageSize: 50,
                sortColumn: 'NAME',
                sortOrder: 'ASCENDING',
              );
      print(
          'Retrieve tasks with optional parameters response: ${response.body}');
      expect(response.isSuccessful, true);
      // No assert on body because result may be empty for the filter
    });

    test('should retrieve a single task by ID', () async {
      if (projectId == null || projectId.isEmpty) return;
      if (taskId == null || taskId.isEmpty) return;
      final response = await clockifyApi
          .workspace(workspaceId)
          .project(projectId)
          .task(
            taskId,
          )
          .get();
      print('Retrieve single task by ID response: ${response.body}');
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
    });

    test('should return empty list on invalid project ID', () async {
      final response = await clockifyApi
          .workspace(workspaceId)
          .project('invalidProjectId')
          .tasks
          .get()
          .then((res) => res.body ?? []);
      print('Invalid project ID response: $response');
      expect(response, isEmpty);
    });
  });
}
