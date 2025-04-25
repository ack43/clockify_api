import "dart:async";
import 'package:chopper/chopper.dart';

import '../../../models/time_entry.dart';

// This is necessary for the generator to work.
part "time_entries.chopper.dart";

@ChopperApi(baseUrl: "/workspaces")
abstract class ClockifyApiWorkspaceUserTimeEntriesService
    extends ChopperService {
  // A helper method to instantiate the service.
  static ClockifyApiWorkspaceUserTimeEntriesService create(
          [ChopperClient? client]) =>
      _$ClockifyApiWorkspaceUserTimeEntriesService(client);

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
}

class TimeEntryRef {
  final ClockifyApiWorkspaceUserTimeEntriesService _service;
  final String workspaceId;
  final String userId;

  TimeEntryRef(this._service, this.workspaceId, this.userId);

  Future<Response<List<TimeEntry>>> get({
    String? description,
    String? start,
    String? end,
    String? project,
    String? task,
    List<String>? tags,
    bool? projectRequired,
    bool? taskRequired,
    bool? hydrated,
    int? page,
    int? pageSize,
    bool? inProgress,
    String? getWeekBefore,
  }) =>
      _service.timeEntries(
        workspaceId,
        userId,
        description: description,
        start: start,
        end: end,
        project: project,
        task: task,
        tags: tags,
        projectRequired: projectRequired,
        taskRequired: taskRequired,
        hydrated: hydrated,
        page: page,
        pageSize: pageSize,
        inProgress: inProgress,
        getWeekBefore: getWeekBefore,
      );
}
