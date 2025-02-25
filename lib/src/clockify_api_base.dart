import 'package:chopper/chopper.dart';
import './clockify_api/endpoints.dart';

/// Checks if you are awesome. Spoiler: you are.
class ClockifyApi {
  static const String url = 'https://api.clockify.me/api/v1';

  // maybe remove?
  final String? _token;

  final ChopperClient chopper;

  ClockifyApi({String? token, String? url})
      : _token = token,
        chopper = ChopperClient(
          baseUrl: Uri.parse(url ?? ClockifyApi.url),
          services: [
            // Create and pass an instance of the generated service to the client
            ClockifyApiUsersService.create(),
            ClockifyApiWorkspacesService.create()
          ],
          converter: JsonConverter(),
          interceptors: [
            HeadersInterceptor({'X-Api-Key': token ?? ''}),
            // LoggingInterceptor(), etc.
          ],
        );
}
