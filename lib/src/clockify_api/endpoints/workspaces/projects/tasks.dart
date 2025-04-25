import "dart:async";
import 'package:chopper/chopper.dart';
import '../../../models/task.dart';

// This is necessary for the generator to work.
part "tasks.chopper.dart";

@ChopperApi(baseUrl: "/workspaces")
abstract class ClockifyApiTasksService extends ChopperService {
  // A helper method to instantiate the service.
  static ClockifyApiTasksService create([ChopperClient? client]) =>
      _$ClockifyApiTasksService(client);

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
  Future<Response<Task>> task(
    @Path('workspaceId') String workspaceId,
    @Path('projectId') String projectId,
    @Path('id') String taskId,
  );
}

class TasksRef {
  final ClockifyApiTasksService _service;
  final String workspaceId;
  final String projectId;

  TasksRef(this._service, this.workspaceId, this.projectId);

  Future<Response<List<Task>>> get({
    String? name,
    bool? strictNameSearch,
    bool? isActive,
    int? page,
    int? pageSize,
    String? sortColumn,
    String? sortOrder,
  }) =>
      _service.tasks(
        workspaceId,
        projectId,
        name: name,
        strictNameSearch: strictNameSearch,
        isActive: isActive,
        page: page,
        pageSize: pageSize,
        sortColumn: sortColumn,
        sortOrder: sortOrder,
      );
}

class TaskRef {
  final ClockifyApiTasksService _service;
  final String workspaceId;
  final String projectId;
  final String taskId;

  TaskRef(this._service, this.workspaceId, this.projectId, this.taskId);

  Future<Response<Task>> get() => _service.task(workspaceId, projectId, taskId);
}
