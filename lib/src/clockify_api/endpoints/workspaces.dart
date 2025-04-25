import "dart:async";
import 'package:chopper/chopper.dart';
import '../models/workspace.dart';

import 'workspaces/clients.dart';
import 'workspaces/projects.dart';
import 'workspaces/time_entries.dart';
import 'workspaces/user.dart';
import 'workspaces/users.dart';

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
  Future<Response<List<Workspace>>> list({
    @Query('roles') List<String>? roles,
  });

  ///
  /// GET /workspaces/{id}
  /// https://docs.clockify.me/#tag/Workspace/operation/getWorkspaceOfUser
  /// Retrieves a specific workspace by ID.
  /// Return Response with Workspace.
  @GET(path: '/{id}')
  Future<Response<Workspace>> get(
    @Path('id') String workspaceId,
  );
}

//

class WorkspacesRef {
  final ClockifyApiWorkspacesService _service;

  WorkspacesRef(this._service);

  Future<Response<List<Workspace>>> get({List<String>? roles}) =>
      _service.list(roles: roles);
}

class WorkspaceRef {
  final ClockifyApiWorkspacesService _service;
  final ClockifyApiProjectsService _projectsService;
  final ClockifyApiClientsService _clientsService;
  final ClockifyApiTimeEntriesService _timeEntriesService;
  final ClockifyApiWorkspaceUserService _userService;
  final ClockifyApiWorkspaceUsersService _usersService;
  final String workspaceId;

  WorkspaceRef(this._service, this.workspaceId)
      : _projectsService = ClockifyApiProjectsService.create(_service.client),
        _clientsService = ClockifyApiClientsService.create(_service.client),
        _timeEntriesService =
            ClockifyApiTimeEntriesService.create(_service.client),
        _userService = ClockifyApiWorkspaceUserService.create(_service.client),
        _usersService =
            ClockifyApiWorkspaceUsersService.create(_service.client);

  //
  //
  Future<Response<Workspace>> get() => _service.get(workspaceId);

  //
  //

  ProjectsRef get projects => ProjectsRef(_projectsService, workspaceId);

  ProjectRef project(String projectId) =>
      ProjectRef(_projectsService, workspaceId, projectId);

  //
  //

  WorkspaceUsersRef get users => WorkspaceUsersRef(_usersService, workspaceId);
  // Future<Response<List<User>>> users({
  //   String? email,
  //   String? projectId,
  //   String? status,
  //   String? accountStatuses,
  //   String? name,
  //   String? sortColumn,
  //   String? sortOrder,
  //   String? page,
  //   String? pageSize,
  //   String? memberships,
  //   String? includeRoles,
  // }) =>
  //     _usersService.users(
  //       workspaceId,
  //       email: email,
  //       projectId: projectId,
  //       status: status,
  //       accountStatuses: accountStatuses,
  //       name: name,
  //       sortColumn: sortColumn,
  //       sortOrder: sortOrder,
  //       page: page,
  //       pageSize: pageSize,
  //       memberships: memberships,
  //       includeRoles: includeRoles,
  //     );
  WorkspaceUserRef user(String userId) =>
      WorkspaceUserRef(_userService, workspaceId, userId);

  //
  //
  ClientsRef get clients => ClientsRef(_clientsService, workspaceId);
  // Future<Response<List<Client>>> clients({
  //   String? name,
  //   String? sortColumn,
  //   String? sortOrder,
  //   int? page,
  //   int? pageSize,
  //   bool? archived,
  // }) =>
  //     _clientsService.clients(
  //       workspaceId,
  //       name: name,
  //       sortColumn: sortColumn,
  //       sortOrder: sortOrder,
  //       page: page,
  //       pageSize: pageSize,
  //       archived: archived,
  //     );
  ClientRef client(String clientId) =>
      ClientRef(_clientsService, workspaceId, clientId);

  //
  //
  TimeEntriesRef get timeEntries =>
      TimeEntriesRef(_timeEntriesService, workspaceId);
  // Future<Response<List<TimeEntry>>> timeEntriesInProgress() =>
  //     _timeEntriesService.timeEntriesInProgress(workspaceId);
  TimeEntryRef timeEntry(String timeEntryId) =>
      TimeEntryRef(_timeEntriesService, workspaceId, timeEntryId);
}
