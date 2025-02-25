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
  Future<Response<List<Workspace>>> getWorkspaces() {
    final Uri $url = Uri.parse('/workspaces');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Workspace>, Workspace>($request);
  }

  @override
  Future<Response<Workspace>> getWorkspace(String workspaceId) {
    final Uri $url = Uri.parse('/workspaces/${workspaceId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Workspace, Workspace>($request);
  }

  @override
  Future<Response<List<User>>> getWorkspaceUsers(String workspaceId) {
    final Uri $url = Uri.parse('/workspaces/${workspaceId}/users');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<User>, User>($request);
  }

  @override
  Future<Response<List<Project>>> getWorkspaceProjects(
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
  Future<Response<List<Client>>> getWorkspaceClients(
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
}
