import "dart:async";
import 'package:chopper/chopper.dart';

// import '../clockify_api_base.dart';

part "users.chopper.dart";

@ChopperApi(baseUrl: "/users")
abstract class ClockifyApiUsersService extends ChopperService {
  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static ClockifyApiUsersService create([ChopperClient? client]) =>
      _$ClockifyApiUsersService(client);
}
