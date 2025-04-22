import "dart:async";
import 'package:chopper/chopper.dart';
import '../models/workspace.dart';
import '../models/project.dart';
import '../models/client.dart';
import '../models/time_entry.dart';
import '../models/task.dart';
import '../models/user.dart' show User;

// This is necessary for the generator to work.
part "workspaces.chopper.dart";

@ChopperApi(baseUrl: "/workspaces")
abstract class ClockifyApiWorkspacesService extends ChopperService {
  // A helper method to instantiate the service.
  static ClockifyApiWorkspacesService create([ChopperClient? client]) =>
      _$ClockifyApiWorkspacesService(client);

  ///
  /// GET /workspaces
  /// https://docs.clockify.me/#tag/Workspace/operation/getWorkspacesOfUser
  /// Retrieves a list of all workspaces.
  /// Return Response with List`<Workspace`>.
  @GET()
  Future<Response<List<Workspace>>> list();

  ///
  /// GET /workspaces/{id}
  /// https://docs.clockify.me/#tag/Workspace/operation/getWorkspaceOfUser
  /// Retrieves a specific workspace by ID.
  /// Return Response with Workspace.
  @GET(path: '/{id}')
  Future<Response<Workspace>> get(
    @Path('id') String workspaceId,
  );

  ///
  ///
  ///
  /// GET /workspaces/{id}/users
  /// https://docs.clockify.me/#tag/User/operation/getUsersOfWorkspace
  /// Retrieves users for a specific workspace by ID with optional query filters.
  /// Returns Response with List<User>.
  @GET(path: '/{id}/users')
  Future<Response<List<User>>> users(
    @Path('id') String workspaceId, {
    @Query('email') String? email,
    @Query('project-id') String? projectId,
    @Query('status') String? status, // Enum: "PENDING", "ACTIVE", etc.
    @Query('account-statuses') String? accountStatuses,
    @Query('name') String? name,
    @Query('sort-column') String? sortColumn, // Enum: "ID", "EMAIL", etc.
    @Query('sort-order') String? sortOrder, // Enum: "ASCENDING", "DESCENDING"
    @Query('page') String? page,
    @Query('page-size') String? pageSize,
    @Query('memberships') String? memberships, // Enum: "ALL", "NONE", etc.
    @Query('include-roles') String? includeRoles, // Default: "false"
  });

  ///
  ///
  ///
  /// GET /workspaces/{workspaceId}/projects
  /// https://docs.clockify.me/#tag/Project/operation/getProjects
  /// Retrieves a list of projects for a specific workspace by ID with optional query parameters.
  /// Return Response with List`<Project>`.
  @GET(path: '/{workspaceId}/projects')
  Future<Response<List<Project>>> projects(
    @Path('workspaceId') String workspaceId, {
    @Query('name') String? name,
    @Query('strict-name-search') bool? strictNameSearch,
    @Query('archived') String? archived,
    @Query('billable') String? billable,
    @Query('clients') List<String>? clients,
    @Query('contains-client') String? containsClient,
    @Query('client-status') String? clientStatus,
    @Query('users') List<String>? users,
    @Query('contains-user') String? containsUser,
    @Query('user-status') String? userStatus,
    @Query('is-template') String? isTemplate,
    @Query('sort-column') String? sortColumn,
    @Query('sort-order') String? sortOrder,
    @Query('hydrated') String? hydrated,
    @Query('page') String? page,
    @Query('page-size') String? pageSize,
    @Query('access') String? access,
    @Query('expense-limit') String? expenseLimit,
    @Query('expense-date') String? expenseDate,
  });

  /// GET /workspaces/{workspaceId}/projects/{id}
  /// https://docs.clockify.me/#tag/Project/operation/getProject
  /// Find project by ID
  /// Return Response with Project.
  @GET(path: '/{workspaceId}/projects/{id}')
  Future<Response<List<Project>>> getProject(
    @Path('workspaceId') String workspaceId,
    @Path('id') String projectId, {
    @Query('hydrated') String? hydrated,
    @Query('custom-field-entity-type') String? customFieldEntityType,
    @Query('expense-limit') String? expenseLimit,
    @Query('expense-date') String? expenseDate,
  });

  /// GET /workspaces/{workspaceId}/projects/{projectId}/tasks
  /// https://docs.clockify.me/#tag/Project/operation/getProject
  /// Find tasks for project by projectId
  /// Returns a list of tasks for the specified project.
  @GET(path: '/{workspaceId}/projects/{projectId}/tasks')
  Future<Response<List<Task>>> tasks(
    @Path('workspaceId') String workspaceId,
    @Path('projectId') String projectId, {
    @Query('name') String? name,
    @Query('strict-name-search') bool? strictNameSearch,
    @Query('is-active') bool? isActive,
    @Query('page') int? page,
    @Query('page-size') int? pageSize,
    @Query('sort-column') String? sortColumn, // or maybe use an enum
    @Query('sort-order') String? sortOrder, // or maybe use an enum
  });

  /// GET /workspaces/{workspaceId}/projects/{projectId}/tasks/{id}
  /// https://docs.clockify.me/#tag/Project/operation/getProject
  /// Find tasks by ID (and projectId with workspaceId)
  /// Return Response with Task.
  @GET(path: '/{workspaceId}/projects/{projectId}/tasks/{id}')
  Future<Response<List<Task>>> task(
    @Path('workspaceId') String workspaceId,
    @Path('projectId') String projectId,
    @Path('id') String taskId,
  );

  ///
  ///
  ///
  /// GET /workspaces/{workspaceId}/clients
  /// https://docs.clockify.me/#tag/Client/operation/getClients
  /// Retrieves a list of clients for a specific workspace by ID with optional query parameters.
  /// Return Response with List`<Client>`.
  @GET(path: '/{workspaceId}/clients')
  Future<Response<List<Client>>> clients(
    @Path('workspaceId') String workspaceId, {
    @Query('name') String? name,
    @Query('sort-column') String? sortColumn,
    @Query('sort-order') String? sortOrder,
    @Query('page') String? page,
    @Query('page-size') String? pageSize,
    @Query('archived') bool? archived,
  });

  /// GET /workspaces/{workspaceId}/clients/{id}
  /// https://docs.clockify.me/#tag/Client/operation/getClient
  /// Get client by ID
  /// Return Response with Client.
  @GET(path: '/{workspaceId}/clients/{id}')
  Future<Response<List<Project>>> getClient(
    @Path('workspaceId') String workspaceId,
    @Path('id') String clientId,
  );

  ///
  ///
  ///
  /// GET /workspaces/{workspaceId}/time-entries
  /// https://docs.clockify.me/#tag/Time-entry/operation/getTimeEntries
  /// Get time entries for a user on workspace
  /// Returns Response with a list of time entries.
  @GET(path: '/{workspaceId}/user/{userId}/time-entries')
  Future<Response<List<TimeEntry>>> timeEntries(
    @Path('workspaceId') String workspaceId,
    @Path('userId') String userId, {
    @Query('description') String? description,
    @Query('start') String? start,
    @Query('end') String? end,
    @Query('project') String? project,
    @Query('task') String? task,
    @Query('tags') List<String>? tags,
    @Query('project-required') bool? projectRequired,
    @Query('task-required') bool? taskRequired,
    @Query('hydrated') bool? hydrated,
    @Query('page') int? page,
    @Query('page-size') int? pageSize,
    @Query('in-progress') bool? inProgress,
    @Query('get-week-before') String? getWeekBefore,
  });

  /// GET /workspaces/{workspaceId}/time-entries/status/in-progress
  /// https://docs.clockify.me/#tag/Time-entry/operation/getInProgressTimeEntries
  /// Retrieves in-progress time entries for a specific workspace.
  /// Returns Response with a list of time entries.
  @GET(path: '/{workspaceId}/time-entries/status/in-progress')
  Future<Response<List<TimeEntry>>> timeEntriesInProgress(
    @Path('workspaceId') String workspaceId, {
    @Query('page') int? page,
    @Query('page-size') int? pageSize,
  });

  /// GET /workspaces/{workspaceId}/time-entries/{id}
  /// https://docs.clockify.me/#tag/Time-entry/operation/getTimeEntry
  /// Get a specific time entry on workspace
  /// Returns Response time entry.
  @GET(path: '/{workspaceId}/time-entries/{id}')
  Future<Response<TimeEntry>> getTimeEntry(
    @Path('workspaceId') String workspaceId,
    @Path('id') String timeEntryId, {
    @Query('hydrated') bool? hydrated,
  });
}
