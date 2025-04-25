// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_entries.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ClockifyApiWorkspaceUserTimeEntriesService
    extends ClockifyApiWorkspaceUserTimeEntriesService {
  _$ClockifyApiWorkspaceUserTimeEntriesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ClockifyApiWorkspaceUserTimeEntriesService;

  @override
  Future<Response<List<TimeEntry>>> timeEntries(
    String workspaceId,
    String userId, {
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
  }) {
    final Uri $url =
        Uri.parse('/workspaces/${workspaceId}/user/${userId}/time-entries');
    final Map<String, dynamic> $params = <String, dynamic>{
      'description': description,
      'start': start,
      'end': end,
      'project': project,
      'task': task,
      'tags': tags,
      'project-required': projectRequired,
      'task-required': taskRequired,
      'hydrated': hydrated,
      'page': page,
      'page-size': pageSize,
      'in-progress': inProgress,
      'get-week-before': getWeekBefore,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<TimeEntry>, TimeEntry>($request);
  }
}
