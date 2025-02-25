import "dart:async";
import 'package:chopper/chopper.dart';

// import '../clockify_api_base.dart';

// This is necessary for the generator to work.
part "workspaces.chopper.dart";

@ChopperApi(baseUrl: "/workspaces")
abstract class ClockifyApiWorkspacesService extends ChopperService {
  // A helper method that helps instantiating the service. You can omit this method and use the generated class directly instead.
  static ClockifyApiWorkspacesService create([ChopperClient? client]) =>
      _$ClockifyApiWorkspacesService(client);
}
