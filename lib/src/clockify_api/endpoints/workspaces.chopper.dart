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
  Future<Response<List<Workspace>>> list({List<String>? roles}) {
    final Uri $url = Uri.parse('/workspaces');
    final Map<String, dynamic> $params = <String, dynamic>{'roles': roles};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
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
}
