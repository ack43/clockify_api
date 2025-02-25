import "dart:async";
import 'package:chopper/chopper.dart';
import '../models/workspace.dart';
import '../models/user.dart' show User;

// This is necessary for the generator to work.
part "workspaces.chopper.dart";

@ChopperApi(baseUrl: "/workspaces")
abstract class ClockifyApiWorkspacesService extends ChopperService {
  // A helper method to instantiate the service.
  static ClockifyApiWorkspacesService create([ChopperClient? client]) =>
      _$ClockifyApiWorkspacesService(client);

  ///
  ///
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
  ///
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
  ///
  ///
  /// GET /workspaces/{id}/users
  /// Retrieves a users for a specific workspace by ID.
  /// Return Response with List`<User`>.
  @GET(path: '/{id}/users')
  Future<Response<List<User>>> getWorkspaceUsers(
    @Path('id') String workspaceId,
  );

  ///
  /// GET /workspaces/{id}/users
  /// Retrieves a users for a specific workspace by ID.
  /// Return List`<User`>.
  Future<List<User>> getWorkspaceUsersSafe(String workspaceId) =>
      getWorkspaceUsers(workspaceId)
          .then((response) => response.isSuccessful ? response.body ?? [] : []);
}
