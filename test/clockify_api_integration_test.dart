import 'package:test/test.dart';
import 'package:dotenv/dotenv.dart' as dotenv;
import 'package:clockify_api/clockify_api.dart';

void main() {
  print(
      'Load environment variables (including platform environment variables)');
  // Load environment variables (including platform environment variables)
  final env = dotenv.DotEnv(
    includePlatformEnvironment: true,
  )..load(['test/.env']);

  // Get the API key, workspace ID, and user ID from environment variables.
  final apiKey = env['CLOCKIFY_API_KEY'];
  final workspaceId = env['WORKSPACE_ID'];
  final expectedUserId = env['USER_ID'];

  // If no API key, workspace ID, or user ID is defined, skip integration tests.
  if (apiKey == null || apiKey.isEmpty) {
    print("No CLOCKIFY_API_KEY defined. Skipping integration tests.");
    return;
  }

  if (workspaceId == null || workspaceId.isEmpty) {
    print("No WORKSPACE_ID defined. Skipping integration tests.");
    return;
  }

  if (expectedUserId == null || expectedUserId.isEmpty) {
    print("No USER_ID defined. Skipping integration tests.");
    return;
  }

  // Create an instance of ClockifyApi using the API key.
  final clockifyApi = ClockifyApi(apiKey: apiKey);

  group('ClockifyApi Integration Tests', () {
    test('getWorkspacesSafe returns a non-empty list of workspaces', () async {
      try {
        final workspaces =
            await clockifyApi.serviceWorkspaces.getWorkspacesSafe();
        expect(workspaces, isNotNull);
        expect(workspaces, isA<List<Workspace>>());
        expect(workspaces, isNotEmpty,
            reason: 'Expected at least one workspace.');
        print('Fetched workspaces: ${workspaces.map((w) => w.name).toList()}');
      } catch (e) {
        fail('Error fetching workspaces: $e');
      }
    });

    test('getWorkspaceSafe returns a valid workspace for a given id', () async {
      final workspace =
          await clockifyApi.serviceWorkspaces.getWorkspaceSafe(workspaceId);
      expect(workspace, isNotNull,
          reason: 'Workspace not found for id: $workspaceId');
      if (workspace != null) {
        expect(workspace.id, equals(workspaceId));
        print('Fetched workspace: ${workspace.name}');
      }
    });

    test('getWorkspaceUsersSafe returns a list of users for a given workspace',
        () async {
      final users = await clockifyApi.serviceWorkspaces
          .getWorkspaceUsersSafe(workspaceId);
      expect(users, isNotNull);
      expect(users, isA<List<User>>());
      print('Fetched ${users.length} users for workspace $workspaceId');
    });

    test('currentSafe returns the current logged-in user info', () async {
      final user = await clockifyApi.serviceUsers.currentSafe();
      expect(user, isNotNull, reason: 'No user is currently logged in.');
      print('user - ${user?.id}');
      if (user != null) {
        print('Fetched current user: ${user.name}');
      }
    });

    test('currentSafe returns the current logged-in user id', () async {
      final user = await clockifyApi.serviceUsers.currentSafe();
      expect(user, isNotNull, reason: 'No user is currently logged in.');
      if (user != null) {
        expect(user.id, isNotEmpty, reason: 'User ID should not be empty.');
        print('Current logged-in user ID: ${user.id}');
        expect(user.id, equals(expectedUserId),
            reason: 'User ID does not match the expected value.');
      }
    });

    test('current method returns a successful response', () async {
      final response = await clockifyApi.serviceUsers.current();
      expect(response.isSuccessful, true,
          reason: 'The response should be successful.');
      expect(response.body, isNotNull,
          reason: 'The response body should not be null.');
      print('Successfully fetched current user: ${response.body?.name}');
    });

    test('current method returns valid user data', () async {
      final response = await clockifyApi.serviceUsers.current();
      expect(response.body, isNotNull,
          reason: 'The response body should not be null.');
      final user = response.body;
      if (user != null) {
        expect(user.id, isNotEmpty, reason: 'User ID should not be empty.');
        expect(user.name, isNotEmpty, reason: 'User name should not be empty.');
        print('Fetched current user: ${user.name}');
      }
    });
  });
}
