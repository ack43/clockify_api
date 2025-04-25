// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ClockifyApiWorkspaceUsersService
    extends ClockifyApiWorkspaceUsersService {
  _$ClockifyApiWorkspaceUsersService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ClockifyApiWorkspaceUsersService;

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
}
