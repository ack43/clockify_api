import "dart:async";
import 'package:chopper/chopper.dart';

import '../models/user.dart';

part "users.chopper.dart";

@ChopperApi(baseUrl: "/user")
abstract class ClockifyApiUsersService extends ChopperService {
  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static ClockifyApiUsersService create([ChopperClient? client]) =>
      _$ClockifyApiUsersService(client);

  ///
  /// GET /user
  /// https://docs.clockify.me/#tag/User/operation/getLoggedUser
  /// Get currently logged-in user's info
  /// Return Response with User.
  @GET()
  Future<Response<User>> current({
    @Query('include-memberships') bool? includeMemberships,
  });
}

class UsersRef {
  final ClockifyApiUsersService _service;

  UsersRef(this._service);

  Future<Response<User>> current() => _service.current();
}
