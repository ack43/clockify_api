// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_entries.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ClockifyApiTimeEntriesService
    extends ClockifyApiTimeEntriesService {
  _$ClockifyApiTimeEntriesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ClockifyApiTimeEntriesService;

  @override
  Future<Response<List<TimeEntry>>> timeEntriesInProgress(
    String workspaceId, {
    int? page,
    int? pageSize,
  }) {
    final Uri $url =
        Uri.parse('/workspaces/${workspaceId}/time-entries/status/in-progress');
    final Map<String, dynamic> $params = <String, dynamic>{
      'page': page,
      'page-size': pageSize,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<TimeEntry>, TimeEntry>($request);
  }

  @override
  Future<Response<TimeEntry>> getTimeEntry(
    String workspaceId,
    String timeEntryId, {
    bool? hydrated,
  }) {
    final Uri $url =
        Uri.parse('/workspaces/${workspaceId}/time-entries/${timeEntryId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'hydrated': hydrated
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<TimeEntry, TimeEntry>($request);
  }
}
