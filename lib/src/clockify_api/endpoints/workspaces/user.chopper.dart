// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ClockifyApiWorkspaceUserService
    extends ClockifyApiWorkspaceUserService {
  _$ClockifyApiWorkspaceUserService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ClockifyApiWorkspaceUserService;

  @override
  Future<Response<User>> user(
    String workspaceId,
    String userId,
  ) {
    final Uri $url = Uri.parse('/workspaces/${workspaceId}/user/${userId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<User, User>($request);
  }
}
