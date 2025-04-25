import "dart:async";
import 'package:chopper/chopper.dart';

import '../../models/user.dart';
import 'user/time_entries.dart';

part "user.chopper.dart";

@ChopperApi(baseUrl: "/workspaces")
abstract class ClockifyApiWorkspaceUserService extends ChopperService {
  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static ClockifyApiWorkspaceUserService create([ChopperClient? client]) =>
      _$ClockifyApiWorkspaceUserService(client);

  ///
  ///
  ///
  /// GET /workspaces/{id}
  /// https://docs.clockify.me/#tag/User/operation/getUsersOfWorkspace
  /// Retrieves users for a specific workspace by ID with optional query filters.
  /// Returns Response with List of User.
  @GET(path: '/{workspaceId}/user/{userId}')
  Future<Response<User>> user(
      @Path('workspaceId') String workspaceId, @Path('userId') String userId);
}

class WorkspaceUserRef {
  final ClockifyApiWorkspaceUserService _service;
  final ClockifyApiWorkspaceUserTimeEntriesService _timeEntriesService;
  final String workspaceId;
  final String userId;

  WorkspaceUserRef(this._service, this.workspaceId, this.userId)
      : _timeEntriesService =
            ClockifyApiWorkspaceUserTimeEntriesService.create(_service.client);

  TimeEntryRef get timeEntries =>
      TimeEntryRef(_timeEntriesService, workspaceId, userId);
}
