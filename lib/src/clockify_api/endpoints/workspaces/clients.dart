import "dart:async";
import 'package:chopper/chopper.dart';
import '../../models/client.dart';

// This is necessary for the generator to work.
part "clients.chopper.dart";

@ChopperApi(baseUrl: "/workspaces")
abstract class ClockifyApiClientsService extends ChopperService {
  // A helper method to instantiate the service.
  static ClockifyApiClientsService create([ChopperClient? client]) =>
      _$ClockifyApiClientsService(client);

  ///
  ///
  ///
  /// GET /workspaces/{workspaceId}/clients
  /// https://docs.clockify.me/#tag/Client/operation/getClients
  /// Retrieves a list of clients for a specific workspace by ID with optional query parameters.
  /// Return Response with List`<Client>`.
  @GET(path: '/{workspaceId}/clients')
  Future<Response<List<Client>>> clients(
    @Path('workspaceId') String workspaceId, {
    @Query('name') String? name,
    @Query('sort-column') String? sortColumn,
    @Query('sort-order') String? sortOrder,
    @Query('page') int? page,
    @Query('page-size') int? pageSize,
    @Query('archived') bool? archived,
  });

  /// GET /workspaces/{workspaceId}/clients/{id}
  /// https://docs.clockify.me/#tag/Client/operation/getClient
  /// Get client by ID
  /// Return Response with Client.
  @GET(path: '/{workspaceId}/clients/{id}')
  Future<Response<Client>> getClient(
    @Path('workspaceId') String workspaceId,
    @Path('id') String clientId,
  );
}

class ClientsRef {
  final ClockifyApiClientsService _service;
  final String workspaceId;

  ClientsRef(this._service, this.workspaceId);

  Future<Response<List<Client>>> get({
    String? name,
    String? sortColumn,
    String? sortOrder,
    int? page,
    int? pageSize,
    bool? archived,
  }) =>
      _service.clients(
        workspaceId,
        name: name,
        sortColumn: sortColumn,
        sortOrder: sortOrder,
        page: page,
        pageSize: pageSize,
        archived: archived,
      );
}

class ClientRef {
  final ClockifyApiClientsService _service;
  final String workspaceId;
  final String clientId;

  ClientRef(this._service, this.workspaceId, this.clientId);

  Future<Response<Client>> get() => _service.getClient(workspaceId, clientId);
}
