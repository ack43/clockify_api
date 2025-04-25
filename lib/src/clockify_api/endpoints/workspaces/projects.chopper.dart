// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ClockifyApiProjectsService extends ClockifyApiProjectsService {
  _$ClockifyApiProjectsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ClockifyApiProjectsService;

  @override
  Future<Response<List<Project>>> projects(
    String workspaceId, {
    String? name,
    bool? strictNameSearch,
    bool? archived,
    bool? billable,
    List<String>? clients,
    String? containsClient,
    String? clientStatus,
    List<String>? users,
    String? containsUser,
    String? userStatus,
    bool? isTemplate,
    String? sortColumn,
    String? sortOrder,
    String? hydrated,
    int? page,
    int? pageSize,
    String? access,
    int? expenseLimit,
    String? expenseDate,
  }) {
    final Uri $url = Uri.parse('/workspaces/${workspaceId}/projects');
    final Map<String, dynamic> $params = <String, dynamic>{
      'name': name,
      'strict-name-search': strictNameSearch,
      'archived': archived,
      'billable': billable,
      'clients': clients,
      'contains-client': containsClient,
      'client-status': clientStatus,
      'users': users,
      'contains-user': containsUser,
      'user-status': userStatus,
      'is-template': isTemplate,
      'sort-column': sortColumn,
      'sort-order': sortOrder,
      'hydrated': hydrated,
      'page': page,
      'page-size': pageSize,
      'access': access,
      'expense-limit': expenseLimit,
      'expense-date': expenseDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Project>, Project>($request);
  }

  @override
  Future<Response<Project>> getProject(
    String workspaceId,
    String projectId, {
    String? hydrated,
    String? customFieldEntityType,
    String? expenseLimit,
    String? expenseDate,
  }) {
    final Uri $url =
        Uri.parse('/workspaces/${workspaceId}/projects/${projectId}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'hydrated': hydrated,
      'custom-field-entity-type': customFieldEntityType,
      'expense-limit': expenseLimit,
      'expense-date': expenseDate,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<Project, Project>($request);
  }
}
