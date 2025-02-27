import 'package:dotenv/dotenv.dart';
import 'package:clockify_api/clockify_api.dart';

void main() async {
  final env = DotEnv(includePlatformEnvironment: true)..load();

  final clockifyApi = ClockifyApi(apiKey: env['CLOCKIFY_API_KEY']!);

  await clockifyApi.serviceWorkspaces.getWorkspaces().then((ws) => print(ws));

  await clockifyApi.serviceUsers.current().then((ws) => print(ws));

  await clockifyApi.serviceWorkspaces.getWorkspaces().then((wsResponse) {
    print('wsResponse (${wsResponse.isSuccessful})');
    if (wsResponse.isSuccessful) {
      final wss = wsResponse.body ?? [];
      print('wss (${wss.length})');
      for (final ws in wss) {
        print('ws (${ws.id}) / users ');
        clockifyApi.serviceWorkspaces.getWorkspaceUsers(ws.id).then(
          (usersResponse) {
            print(usersResponse);
            if (usersResponse.isSuccessful) {
              print('suc : ${usersResponse.body}');
            }
          },
        );
      }
    }
  });

  return null;
}
