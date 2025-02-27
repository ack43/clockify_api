import 'package:chopper/chopper.dart';

import 'dart:async';
import 'dart:convert';

import 'clockify_api/endpoints/endpoints.dart';
import 'clockify_api/models/models.dart';

class ClockifyApi {
  static const String url = 'https://api.clockify.me/api/v1';
  static const String apiKeyHeader = 'X-Api-Key';
  static const String marketplaceKeyHeader = 'X-Marketplace-Key';

  // maybe remove?
  final String? _apiKey;
  final String? _marketplaceKey;

  final ChopperClient chopper;

  ClockifyApi.chopper(this.chopper)
      : _apiKey = null,
        _marketplaceKey = null;
  ClockifyApi({
    String? apiKey,
    String? marketplaceKey,
    String? url,
    List<Interceptor> interceptors = const [],
  })  : _apiKey = apiKey,
        _marketplaceKey = marketplaceKey,
        chopper = ChopperClient(
          baseUrl: Uri.parse(url ?? ClockifyApi.url),
          services: [
            // Create and pass an instance of the generated service to the client
            ClockifyApiUsersService.create(),
            ClockifyApiWorkspacesService.create()
          ],
          // converter: JsonConverter(),
          converter: _JsonTypeConverter({
            User: (json) => User.fromJson(json),
            Workspace: (json) => Workspace.fromJson(json),
            Client: (json) => Client.fromJson(json),
            Project: (json) => Project.fromJson(json),
          }),
          interceptors: interceptors +
              [
                if (apiKey != null) HeadersInterceptor({apiKeyHeader: apiKey}),
                if (marketplaceKey != null)
                  HeadersInterceptor({marketplaceKeyHeader: marketplaceKey}),
              ],
        );

  ///
  /// Chopper services
  ///
  ServiceType _service<ServiceType extends ChopperService>() =>
      chopper.getService<ServiceType>();

  ClockifyApiWorkspacesService get serviceWorkspaces =>
      _service<ClockifyApiWorkspacesService>();

  ClockifyApiUsersService get serviceUsers =>
      _service<ClockifyApiUsersService>();
}

typedef FromJson<T> = T Function(Map<String, dynamic> json);

class _JsonTypeConverter extends JsonConverter {
  final Map<Type, FromJson> _factories;

  _JsonTypeConverter(this._factories);

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(
      Response response) {
    final jsonMap = json.decode(response.bodyString);

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
              .map(
                  (item) => fromJson(item as Map<String, dynamic>) as InnerType)
              .toList() as BodyType,
        );
      }
    }

    return super.convertResponse(response);
  }
}
