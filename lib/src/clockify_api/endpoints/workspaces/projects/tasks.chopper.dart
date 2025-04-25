// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ClockifyApiTasksService extends ClockifyApiTasksService {
  _$ClockifyApiTasksService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ClockifyApiTasksService;

  @override
  Future<Response<List<Task>>> tasks(
    String workspaceId,
    String projectId, {
    String? name,
    bool? strictNameSearch,
    bool? isActive,
    int? page,
    int? pageSize,
    String? sortColumn,
    String? sortOrder,
  }) {
    final Uri $url =
        Uri.parse('/workspaces/${workspaceId}/projects/${projectId}/tasks');
    final Map<String, dynamic> $params = <String, dynamic>{
      'name': name,
      'strict-name-search': strictNameSearch,
      'is-active': isActive,
      'page': page,
      'page-size': pageSize,
      'sort-column': sortColumn,
      'sort-order': sortOrder,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Task>, Task>($request);
  }

  @override
  Future<Response<Task>> task(
    String workspaceId,
    String projectId,
    String taskId,
  ) {
    final Uri $url = Uri.parse(
        '/workspaces/${workspaceId}/projects/${projectId}/tasks/${taskId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Task, Task>($request);
  }
}
