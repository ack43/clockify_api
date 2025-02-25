import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:clockify_api/clockify_api.dart'; // Adjust the import

void main() async {
  // Instantiate Clockify API with API key
  final clockifyApi = ClockifyApi(apiKey: 'YOUR_API_KEY');

  // Call getWorkspaces to fetch workspaces
  final response = await clockifyApi.chopper
      .getService<ClockifyApiWorkspacesService>()
      .getWorkspaces();

  if (response.isSuccessful) {
    List<Workspace> workspaces = response.body!; // Get list of workspaces
    print("Fetched ${workspaces.length} workspaces:");
    for (var workspace in workspaces) {
      print(workspace.name); // Print workspace names
    }
  } else {
    print("Error fetching workspaces: ${response.error}");
  }
}
