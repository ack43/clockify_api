import 'dart:async';
import 'dart:convert';
import 'package:test/test.dart';
import 'package:clockify_api/clockify_api.dart';
import 'package:http/http.dart' as http;
import 'package:chopper/chopper.dart';

/// Fake HTTP client that simulates responses based on the request.
class FakeHttpClient extends http.BaseClient {
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    String body;
    int statusCode;

    // Note: The baseUrl includes '/api/v1', so the full path is e.g. '/api/v1/workspaces'
    if (request.method == 'GET' && request.url.path == '/api/v1/workspaces') {
      // Simulate GET /api/v1/workspaces response:
      body = jsonEncode([
        {
          "id": "workspace1",
          "name": "Workspace One",
          "hourlyRate": {"amount": 0, "currency": "USD"},
          "costRate": {"amount": 0, "currency": "USD"},
          "memberships": [],
          "workspaceSettings": {
            "timeRoundingInReports": false,
            "onlyAdminsSeeBillableRates": true,
            "onlyAdminsCreateProject": true,
            "onlyAdminsSeeDashboard": false,
            "defaultBillableProjects": true,
            "lockTimeEntries": null,
            "lockTimeZone": null,
            "round": {"round": "Round to nearest", "minutes": "15"},
            "projectFavorites": true,
            "canSeeTimeSheet": false,
            "canSeeTracker": true,
            "projectPickerSpecialFilter": false,
            "forceProjects": false,
            "forceTasks": false,
            "forceTags": false,
            "forceDescription": false,
            "onlyAdminsSeeAllTimeEntries": false,
            "onlyAdminsSeePublicProjectsEntries": false,
            "trackTimeDownToSecond": true,
            "projectGroupingLabel": "client",
            "adminOnlyPages": [],
            "automaticLock": null,
            "onlyAdminsCreateTag": false,
            "onlyAdminsCreateTask": false,
            "timeTrackingMode": "DEFAULT",
            "multiFactorEnabled": false,
            "numberFormat": "PERIOD_COMMA",
            "currencyFormat": "VALUE_SPACE_CURRENCY",
            "durationFormat": "FULL",
            "isProjectPublicByDefault": false
          },
          "imageUrl": "",
          "featureSubscriptionType": "FREE",
          "features": [],
          "currencies": [],
          "subdomain": {"name": null, "enabled": false}
        }
      ]);
      statusCode = 200;
    } else if (request.method == 'GET' &&
        RegExp(r'^/api/v1/workspaces/[^/]+$').hasMatch(request.url.path)) {
      // Simulate GET /api/v1/workspaces/{id} response:
      body = jsonEncode({
        "id": "workspace1",
        "name": "Workspace One",
        "hourlyRate": {"amount": 0, "currency": "USD"},
        "costRate": {"amount": 0, "currency": "USD"},
        "memberships": [],
        "workspaceSettings": {
          "timeRoundingInReports": false,
          "onlyAdminsSeeBillableRates": true,
          "onlyAdminsCreateProject": true,
          "onlyAdminsSeeDashboard": false,
          "defaultBillableProjects": true,
          "lockTimeEntries": null,
          "lockTimeZone": null,
          "round": {"round": "Round to nearest", "minutes": "15"},
          "projectFavorites": true,
          "canSeeTimeSheet": false,
          "canSeeTracker": true,
          "projectPickerSpecialFilter": false,
          "forceProjects": false,
          "forceTasks": false,
          "forceTags": false,
          "forceDescription": false,
          "onlyAdminsSeeAllTimeEntries": false,
          "onlyAdminsSeePublicProjectsEntries": false,
          "trackTimeDownToSecond": true,
          "projectGroupingLabel": "client",
          "adminOnlyPages": [],
          "automaticLock": null,
          "onlyAdminsCreateTag": false,
          "onlyAdminsCreateTask": false,
          "timeTrackingMode": "DEFAULT",
          "multiFactorEnabled": false,
          "numberFormat": "PERIOD_COMMA",
          "currencyFormat": "VALUE_SPACE_CURRENCY",
          "durationFormat": "FULL",
          "isProjectPublicByDefault": false
        },
        "imageUrl": "",
        "featureSubscriptionType": "FREE",
        "features": [],
        "currencies": [],
        "subdomain": {"name": null, "enabled": false}
      });
      statusCode = 200;
    } else if (request.method == 'GET' && request.url.path.endsWith('/users')) {
      // Simulate GET /api/v1/workspaces/{id}/users response:
      body = jsonEncode([
        {
          "activeWorkspace": "workspace1",
          "customFields": [
            {
              "customFieldId": "cf1",
              "customFieldName": "TIN",
              "customFieldType": "TXT",
              "userId": "user1",
              "value": "20231211-12345"
            }
          ],
          "defaultWorkspace": "workspace1",
          "email": "johndoe@example.com",
          "id": "user1",
          "memberships": [],
          "name": "John Doe",
          "profilePicture": "https://www.url.com/profile-picture.png",
          "settings": {
            "alerts": true,
            "approval": false,
            "collapseAllProjectLists": true,
            "dashboardPinToTop": true,
            "dashboardSelection": "ME",
            "dashboardViewType": "BILLABILITY",
            "dateFormat": "MM/DD/YYYY",
            "groupSimilarEntriesDisabled": true,
            "isCompactViewOn": false,
            "lang": "en",
            "longRunning": true,
            "multiFactorEnabled": true,
            "myStartOfDay": "09:00",
            "onboarding": false,
            "projectListCollapse": 15,
            "projectPickerTaskFilter": false,
            "pto": true,
            "reminders": false,
            "scheduledReports": true,
            "scheduling": false,
            "sendNewsletter": false,
            "showOnlyWorkingDays": false,
            "summaryReportSettings": {"group": "PROJECT", "subgroup": "CLIENT"},
            "theme": "DARK",
            "timeFormat": "HOUR24",
            "timeTrackingManual": true,
            "timeZone": "Asia/Aden",
            "weekStart": "MONDAY",
            "weeklyUpdates": false
          },
          "status": "ACTIVE"
        }
      ]);
      statusCode = 200;
    } else {
      // Default: 404 Not Found.
      body = '';
      statusCode = 404;
    }

    final stream = Stream.value(utf8.encode(body));
    return http.StreamedResponse(stream, statusCode,
        headers: {'Content-Type': 'application/json'});
  }
}

/// Custom JSON converter that maps JSON to a given model type.
class _JsonTypeConverter extends JsonConverter {
  final Map<Type, FromJson> _factories;

  _JsonTypeConverter(this._factories);

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(
      Response response) {
    // print('response.bodyString - ${response.bodyString}');
    final dynamic decoded = json.decode(response.bodyString);
    final fromJson = _factories[InnerType];

    if (fromJson != null) {
      if (decoded is Map<String, dynamic>) {
        final model = fromJson(decoded);
        return response.copyWith<BodyType>(
          body: model as BodyType,
        );
      } else if (decoded is List) {
        final models = decoded
            .map((item) => fromJson(item as Map<String, dynamic>) as InnerType)
            .toList();
        return response.copyWith<BodyType>(
          body: models as BodyType,
        );
      }
    }

    return super.convertResponse(response);
  }
}

/// Creates a test ChopperClient using FakeHttpClient.
ChopperClient createTestClient() {
  return ChopperClient(
    baseUrl: Uri.parse(
        ClockifyApi.url), // Expecting 'https://api.clockify.me/api/v1'
    services: [
      ClockifyApiWorkspacesService.create(),
    ],
    converter: _JsonTypeConverter({
      User: (json) => User.fromJson(json),
      Workspace: (json) => Workspace.fromJson(json),
    }),
    client: FakeHttpClient(),
  );
}

void main() {
  group('ClockifyApiWorkspacesService Tests', () {
    late ChopperClient client;
    late ClockifyApiWorkspacesService service;

    setUp(() {
      client = createTestClient();
      service = client.getService<ClockifyApiWorkspacesService>();
    });

    test('getWorkspacesSafe returns a list of workspaces', () async {
      final workspaces =
          await service.list().then((response) => response.body ?? []);
      print('workspaces - $workspaces');
      expect(workspaces, isNotNull);
      expect(workspaces, isA<List<Workspace>>());
      expect(workspaces.length, greaterThan(0));
      expect(workspaces.first.name, equals('Workspace One'));
    });

    test('getWorkspaceSafe returns a workspace for a valid id', () async {
      final workspace =
          await service.get('workspace1').then((response) => response.body);
      print('workspace - $workspace');
      expect(workspace, isNotNull);
      expect(workspace?.id, equals('workspace1'));
      expect(workspace?.name, equals('Workspace One'));
    });
  });
}
