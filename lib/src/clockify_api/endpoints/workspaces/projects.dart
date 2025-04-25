import "dart:async";
import 'package:chopper/chopper.dart';
import '../../models/project.dart';
import '../../models/task.dart';

import 'projects/tasks.dart';

// This is necessary for the generator to work.
part "projects.chopper.dart";

@ChopperApi(baseUrl: "/workspaces")
abstract class ClockifyApiProjectsService extends ChopperService {
  // A helper method to instantiate the service.
  static ClockifyApiProjectsService create([ChopperClient? client]) =>
      _$ClockifyApiProjectsService(client);

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
    @Query('archived') bool? archived,
    @Query('billable') bool? billable,
    @Query('clients') List<String>? clients,
    @Query('contains-client') String? containsClient,
    @Query('client-status') String? clientStatus,
    @Query('users') List<String>? users,
    @Query('contains-user') String? containsUser,
    @Query('user-status') String? userStatus,
    @Query('is-template') bool? isTemplate,
    @Query('sort-column') String? sortColumn,
    @Query('sort-order') String? sortOrder,
    @Query('hydrated') String? hydrated,
    @Query('page') int? page,
    @Query('page-size') int? pageSize,
    @Query('access') String? access,
    @Query('expense-limit') int? expenseLimit,
    @Query('expense-date') String? expenseDate,
  });

  /// GET /workspaces/{workspaceId}/projects/{id}
  /// https://docs.clockify.me/#tag/Project/operation/getProject
  /// Find project by ID
  /// Return Response with Project.
  @GET(path: '/{workspaceId}/projects/{id}')
  Future<Response<Project>> getProject(
    @Path('workspaceId') String workspaceId,
    @Path('id') String projectId, {
    @Query('hydrated') String? hydrated,
    @Query('custom-field-entity-type') String? customFieldEntityType,
    @Query('expense-limit') String? expenseLimit,
    @Query('expense-date') String? expenseDate,
  });
}

class ProjectsRef {
  final ClockifyApiProjectsService _service;
  final String workspaceId;

  ProjectsRef(this._service, this.workspaceId);

  Future<Response<List<Project>>> get({
    String? name,
    bool? strictNameSearch,
    bool? archived,
    bool? billable,
    List<String>? clients,
    String? containsClient,
    String? clientStatus,
    List<String>? users,
    String? containsUser,
    String? userStatus,
    bool? isTemplate,
    String? sortColumn,
    String? sortOrder,
    String? hydrated,
    int? page,
    int? pageSize,
    String? access,
    int? expenseLimit,
    String? expenseDate,
  }) =>
      _service.projects(
        workspaceId,
        name: name,
        strictNameSearch: strictNameSearch,
        archived: archived,
        billable: billable,
        clients: clients,
        containsClient: containsClient,
        clientStatus: clientStatus,
        users: users,
        containsUser: containsUser,
        userStatus: userStatus,
        isTemplate: isTemplate,
        sortColumn: sortColumn,
        sortOrder: sortOrder,
        hydrated: hydrated,
        page: page,
        pageSize: pageSize,
        access: access,
        expenseLimit: expenseLimit,
        expenseDate: expenseDate,
      );
}

class ProjectRef {
  final ClockifyApiProjectsService _service;
  final ClockifyApiTasksService _tasksService;
  final String workspaceId;
  final String projectId;

  ProjectRef(this._service, this.workspaceId, this.projectId)
      : _tasksService = ClockifyApiTasksService.create(_service.client);

  Future<Response<Project>> get() =>
      _service.getProject(workspaceId, projectId);

  TasksRef get tasks => TasksRef(_tasksService, workspaceId, projectId);

  TaskRef task(String taskId) =>
      TaskRef(_tasksService, workspaceId, projectId, taskId);
}
