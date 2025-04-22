import 'dart:math';

import 'package:dotenv/dotenv.dart';
import 'package:clockify_api/clockify_api.dart';

void main() async {
  final env = DotEnv(includePlatformEnvironment: true)..load();

  final clockifyApi = ClockifyApi(apiKey: env['CLOCKIFY_API_KEY']!);

  final wss = await clockifyApi.workspaces.list().then((ws) => ws.body);
  print('all ws: ${wss?.length}');
  final currentWs =
      await clockifyApi.workspaces.list().then((ws) => ws.body?.first);
  print('currentWs (${currentWs?.id}) - ${currentWs?.name}');

  final currentUser = await clockifyApi.users.current().then((ws) => ws.body);

  // await clockifyApi.serviceWorkspaces.getWorkspaces().then((wsResponse) {
  //   print('wsResponse (${wsResponse.isSuccessful})');
  //   if (wsResponse.isSuccessful) {
  //     final wss = wsResponse.body ?? [];
  //     print('wss (${wss.length})');
  //     for (final ws in wss) {
  //       print('ws (${ws.id}) / users ');
  //       clockifyApi.serviceWorkspaces.getWorkspaceUsers(ws.id).then(
  //         (usersResponse) {
  //           print(usersResponse);
  //           if (usersResponse.isSuccessful) {
  //             print('suc : ${usersResponse.body}');
  //           }
  //         },
  //       );
  //     }
  //   }
  // });

  if (currentWs != null) {
    await clockifyApi.workspaces
        .timeEntriesInProgress(currentWs.id)
        .then((timeEntriesResponse) {
      final timeEntries = timeEntriesResponse.body;
      if (timeEntries != null && timeEntries.isNotEmpty) {
        print(timeEntries.first.toJson());
        print(timeEntries.first.timeInterval.toJson());
      } else {
        print('No time entries found');
      }
    });

    if (currentUser != null) {
      final now = DateTime.now().toUtc();
      final todayStart = DateTime.utc(now.year, now.month, now.day);
      final isoStart = todayStart.toIso8601String();
      final todayEnd = todayStart
          .add(const Duration(days: 1))
          .subtract(const Duration(seconds: 1));
      final isoEnd = todayEnd.toIso8601String();

      await clockifyApi.workspaces
          .timeEntries(
        currentWs.id,
        currentUser.id,
        start: isoStart,
        end: isoEnd,
      )
          .then((timeEntriesResponse) {
        final timeEntries = timeEntriesResponse.body;
        if (timeEntries != null) {
          print('time entries for today: ');
          print(timeEntries.length);
          print("____");
          timeEntries.map((e) => print(e.toJson()));
          print("____");
        }
      });
    }
  }

  // if (currentWs != null && currentUser != null) {
  //   await clockifyApi.serviceWorkspaces
  //       .getUserTimeEntries(currentWs.id, currentUser.id, pageSize: 5000)
  //       .then((timeEntriesResponse) {
  //     print(timeEntriesResponse.body?.length);
  //     clockifyApi.serviceWorkspaces
  //         .getTimeEntry(currentWs.id,
  //             ((timeEntriesResponse.body ?? []).toList()..shuffle()).first.id)
  //         .then((timeEntry) {
  //       print(timeEntry.body?.toJson());
  //     });
  //   });
  // }

  return;
}
