import "dart:async";
import 'package:chopper/chopper.dart';
import '../../models/time_entry.dart';

// This is necessary for the generator to work.
part "time_entries.chopper.dart";

@ChopperApi(baseUrl: "/workspaces")
abstract class ClockifyApiTimeEntriesService extends ChopperService {
  // A helper method to instantiate the service.
  static ClockifyApiTimeEntriesService create([ChopperClient? client]) =>
      _$ClockifyApiTimeEntriesService(client);

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

class TimeEntriesRef {
  final ClockifyApiTimeEntriesService _service;
  final String workspaceId;

  TimeEntriesRef(this._service, this.workspaceId);

  Future<Response<List<TimeEntry>>> inProgress({int? page, int? pageSize}) =>
      _service.timeEntriesInProgress(
        workspaceId,
        page: page,
        pageSize: pageSize,
      );
}

class TimeEntryRef {
  final ClockifyApiTimeEntriesService _service;
  final String workspaceId;
  final String timeEntryId;

  TimeEntryRef(this._service, this.workspaceId, this.timeEntryId);

  Future<Response<TimeEntry>> get() =>
      _service.getTimeEntry(workspaceId, timeEntryId);
}
