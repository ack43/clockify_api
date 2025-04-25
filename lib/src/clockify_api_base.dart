import 'package:chopper/chopper.dart';
import 'dart:async';
import 'dart:convert';

import 'clockify_api/endpoints/endpoints.dart';
import 'clockify_api/models/models.dart';

class ClockifyApi {
  static const String url = 'https://api.clockify.me/api/v1';
  static const String apiKeyHeader = 'X-Api-Key';
  static const String marketplaceKeyHeader = 'X-Marketplace-Key';

  final ChopperClient chopper;

  ClockifyApi.chopper(this.chopper);

  ClockifyApi({
    String? apiKey,
    String? marketplaceKey,
    String? url,
    List<Interceptor> interceptors = const [],
  }) : chopper = ChopperClient(
          baseUrl: Uri.parse(url ?? ClockifyApi.url),
          services: [
            ClockifyApiUsersService.create(),
            ClockifyApiWorkspacesService.create(),
          ],
          converter: _JsonTypeConverter({
            User: (json) => User.fromJson(json),
            Workspace: (json) => Workspace.fromJson(json),
            Client: (json) => Client.fromJson(json),
            Project: (json) => Project.fromJson(json),
            TimeEntry: (json) => TimeEntry.fromJson(json),
            Task: (json) => Task.fromJson(json),
          }),
          interceptors: interceptors +
              [
                HeadersInterceptor({
                  'Content-type': 'application/json; charset=utf-8',
                }),
                if (apiKey != null) HeadersInterceptor({apiKeyHeader: apiKey}),
                if (marketplaceKey != null)
                  HeadersInterceptor({marketplaceKeyHeader: marketplaceKey}),
              ],
        );

  ServiceType _service<ServiceType extends ChopperService>() =>
      chopper.getService<ServiceType>();

  ClockifyApiWorkspacesService get _workspacesService =>
      _service<ClockifyApiWorkspacesService>();

  ClockifyApiUsersService get _usersService =>
      _service<ClockifyApiUsersService>();

  // Top-level API

  WorkspacesRef get workspaces => WorkspacesRef(_workspacesService);

  WorkspaceRef workspace(String workspaceId) =>
      WorkspaceRef(_workspacesService, workspaceId);

  UsersRef get users => UsersRef(_usersService);
}

typedef FromJson<T> = T Function(Map<String, dynamic> json);

//
//
class _JsonTypeConverter extends JsonConverter {
  final Map<Type, FromJson> _factories;

  _JsonTypeConverter(this._factories);

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(
      Response response) {
    try {
      final jsonMap = json.decode(utf8.decode(response.bodyBytes));

      if (jsonMap is Map<String, dynamic>) {
        final fromJson = _factories[InnerType];
        if (fromJson != null) {
          return response.copyWith<BodyType>(
            body: fromJson(jsonMap) as BodyType,
          );
        }
      } else if (jsonMap is List) {
        final fromJson = _factories[InnerType];
        if (fromJson != null) {
          return response.copyWith<BodyType>(
            body: jsonMap
                .map((item) =>
                    fromJson(item as Map<String, dynamic>) as InnerType)
                .toList() as BodyType,
          );
        }
      }
    } catch (e) {
      throw FormatException('Invalid JSON response: ${response.bodyString}');
    }

    return super.convertResponse(response);
  }
}
