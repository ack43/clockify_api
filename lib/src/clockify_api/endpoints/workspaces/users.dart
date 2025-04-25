import "dart:async";
import 'package:chopper/chopper.dart';

import '../../models/user.dart';
import 'user/time_entries.dart';

part "users.chopper.dart";

@ChopperApi(baseUrl: "/workspaces")
abstract class ClockifyApiWorkspaceUsersService extends ChopperService {
  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static ClockifyApiWorkspaceUsersService create([ChopperClient? client]) =>
      _$ClockifyApiWorkspaceUsersService(client);

  ///
  ///
  ///
  /// GET /workspaces/{workspaceId}
  /// https://docs.clockify.me/#tag/User/operation/getUsersOfWorkspace
  /// Retrieves users for a specific workspace by ID with optional query filters.
  /// Returns Response with List<User>.
  @GET(path: '/{workspaceId}/users')
  Future<Response<List<User>>> users(
    @Path('workspaceId') String workspaceId, {
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
}

class WorkspaceUsersRef {
  final ClockifyApiWorkspaceUsersService _service;
  final String workspaceId;

  WorkspaceUsersRef(this._service, this.workspaceId);

  Future<Response<List<User>>> get() => _service.users(workspaceId);
}
