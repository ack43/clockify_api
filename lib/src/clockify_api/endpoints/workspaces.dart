import "dart:async";
import 'package:chopper/chopper.dart';
import '../models/workspace.dart';
import '../models/project.dart'; // Import the Project model
import '../models/client.dart'; // Import the Client model
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
  /// Retrieves a list of all workspaces.
  /// Return Response with List`<Workspace`>.
  @GET()
  Future<Response<List<Workspace>>> getWorkspaces();

  ///
  /// GET /workspaces
  /// Retrieves a list of all workspaces.
  /// Return List`<Workspace`> an empty list if the response is not successful.
  Future<List<Workspace>> getWorkspacesSafe() => getWorkspaces()
      .then((response) => response.isSuccessful ? response.body ?? [] : []);

  ///
  /// GET /workspaces/{id}
  /// Retrieves a specific workspace by ID.
  /// Return Response with Workspace.
  @GET(path: '/{id}')
  Future<Response<Workspace>> getWorkspace(
    @Path('id') String workspaceId,
  );

  ///
  /// GET /workspaces/{id}
  /// Retrieves a specific workspace by ID.
  /// Return Workspace or null.
  Future<Workspace?> getWorkspaceSafe(String workspaceId) =>
      getWorkspace(workspaceId)
          .then((response) => response.isSuccessful ? response.body : null);

  ///
  /// GET /workspaces/{id}/users
  /// Retrieves users for a specific workspace by ID.
  /// Return Response with List`<User`>.
  @GET(path: '/{id}/users')
  Future<Response<List<User>>> getWorkspaceUsers(
    @Path('id') String workspaceId,
  );

  ///
  /// GET /workspaces/{id}/users
  /// Retrieves users for a specific workspace by ID.
  /// Return List`<User>`.
  Future<List<User>> getWorkspaceUsersSafe(String workspaceId) =>
      getWorkspaceUsers(workspaceId)
          .then((response) => response.isSuccessful ? response.body ?? [] : []);

  ///
  /// GET /workspaces/{workspaceId}/projects
  /// Retrieves a list of projects for a specific workspace by ID with optional query parameters.
  /// Return Response with List`<Project>`.
  @GET(path: '/{workspaceId}/projects')
  Future<Response<List<Project>>> getWorkspaceProjects(
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

  ///
  /// GET /workspaces/{workspaceId}/projects
  /// Retrieves a list of projects for a specific workspace by ID with optional query parameters.
  /// Return List`<Project>` or empty list if response is not successful.
  Future<List<Project>> getWorkspaceProjectsSafe(
    String workspaceId, {
    String? name,
    bool? strictNameSearch,
    String? archived,
    String? billable,
    List<String>? clients,
    String? containsClient,
    String? clientStatus,
    List<String>? users,
    String? containsUser,
    String? userStatus,
    String? isTemplate,
    String? sortColumn,
    String? sortOrder,
    String? hydrated,
    String? page,
    String? pageSize,
    String? access,
    String? expenseLimit,
    String? expenseDate,
  }) =>
      getWorkspaceProjects(workspaceId,
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
              expenseDate: expenseDate)
          .then((response) => response.isSuccessful ? response.body ?? [] : []);

  ///
  /// GET /workspaces/{workspaceId}/clients
  /// Retrieves a list of clients for a specific workspace by ID with optional query parameters.
  /// Return Response with List`<Client>`.
  @GET(path: '/{workspaceId}/clients')
  Future<Response<List<Client>>> getWorkspaceClients(
    @Path('workspaceId') String workspaceId, {
    @Query('name') String? name,
    @Query('sort-column') String? sortColumn,
    @Query('sort-order') String? sortOrder,
    @Query('page') String? page,
    @Query('page-size') String? pageSize,
    @Query('archived') bool? archived,
  });

  ///
  /// GET /workspaces/{workspaceId}/clients
  /// Retrieves a list of clients for a specific workspace by ID with optional query parameters.
  /// Return List`<Client>` or empty list if response is not successful.
  Future<List<Client>> getWorkspaceClientsSafe(
    String workspaceId, {
    String? name,
    String? sortColumn,
    String? sortOrder,
    String? page,
    String? pageSize,
    bool? archived,
  }) =>
      getWorkspaceClients(workspaceId,
              name: name,
              sortColumn: sortColumn,
              sortOrder: sortOrder,
              page: page,
              pageSize: pageSize,
              archived: archived)
          .then((response) => response.isSuccessful ? response.body ?? [] : []);
}
