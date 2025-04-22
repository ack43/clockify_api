// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspaces.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ClockifyApiWorkspacesService
    extends ClockifyApiWorkspacesService {
  _$ClockifyApiWorkspacesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ClockifyApiWorkspacesService;

  @override
  Future<Response<List<Workspace>>> list() {
    final Uri $url = Uri.parse('/workspaces');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Workspace>, Workspace>($request);
  }

  @override
  Future<Response<Workspace>> get(String workspaceId) {
    final Uri $url = Uri.parse('/workspaces/${workspaceId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Workspace, Workspace>($request);
  }

  @override
  Future<Response<List<User>>> users(
    String workspaceId, {
    String? email,
    String? projectId,
    String? status,
    String? accountStatuses,
    String? name,
    String? sortColumn,
    String? sortOrder,
    String? page,
    String? pageSize,
    String? memberships,
    String? includeRoles,
  }) {
    final Uri $url = Uri.parse('/workspaces/${workspaceId}/users');
    final Map<String, dynamic> $params = <String, dynamic>{
      'email': email,
      'project-id': projectId,
      'status': status,
      'account-statuses': accountStatuses,
      'name': name,
      'sort-column': sortColumn,
      'sort-order': sortOrder,
      'page': page,
      'page-size': pageSize,
      'memberships': memberships,
      'include-roles': includeRoles,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<User>, User>($request);
  }

  @override
  Future<Response<List<Project>>> projects(
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
  Future<Response<List<Project>>> getProject(
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
    return client.send<List<Project>, Project>($request);
  }

  @override
  Future<Response<List<Client>>> clients(
    String workspaceId, {
    String? name,
    String? sortColumn,
    String? sortOrder,
    String? page,
    String? pageSize,
    bool? archived,
  }) {
    final Uri $url = Uri.parse('/workspaces/${workspaceId}/clients');
    final Map<String, dynamic> $params = <String, dynamic>{
      'name': name,
      'sort-column': sortColumn,
      'sort-order': sortOrder,
      'page': page,
      'page-size': pageSize,
      'archived': archived,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<Client>, Client>($request);
  }

  @override
  Future<Response<List<Project>>> getClient(
    String workspaceId,
    String clientId,
  ) {
    final Uri $url =
        Uri.parse('/workspaces/${workspaceId}/clients/${clientId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Project>, Project>($request);
  }

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
