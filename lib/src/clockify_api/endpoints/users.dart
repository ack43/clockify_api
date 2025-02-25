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
  /// Get currently logged-in user's info
  /// Return Response with User.
  @GET()
  Future<Response<User>> current({
    @Query('include-memberships') bool? includeMemberships,
  });

  ///
  /// GET /user
  /// Safe version
  Future<User?> currentSafe({bool? includeMemberships}) =>
      current(includeMemberships: includeMemberships)
          .then((response) => response.isSuccessful ? response.body : null);
}
