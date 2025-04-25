// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clients.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ClockifyApiClientsService extends ClockifyApiClientsService {
  _$ClockifyApiClientsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ClockifyApiClientsService;

  @override
  Future<Response<List<Client>>> clients(
    String workspaceId, {
    String? name,
    String? sortColumn,
    String? sortOrder,
    int? page,
    int? pageSize,
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
  Future<Response<Client>> getClient(
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
    return client.send<Client, Client>($request);
  }
}
