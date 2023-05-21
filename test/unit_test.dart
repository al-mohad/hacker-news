import 'package:flutter_test/flutter_test.dart';
import 'package:hacker_news/app/data/network/apis.dart';

import 'client.dart';

void main() {
  late TestAPIClient apiClient;
  setUp(() {
    apiClient = TestAPIClient();
  });
  group('News Repository', () {
    group('fetch stories', () {
      var storiesId = [];
      test('fetch stories ids based on category', () async {
        // other categories are Apis.newStories Apis.topStories Apis.bestStories
        dynamic response = await apiClient.fetchStoriesLength(
          category: Apis.topStories,
        );
        storiesId = response;
        expect(response, isA<List<dynamic>>());
      });

      test('fetch stories based on the ids fetched above', () async {
        final response =
            await apiClient.fetchStories(queries: {}, storiesId: storiesId);

        expect(10, response);
      });
      // test('Logout', () async {
      //   final data = <String, dynamic>{'user_type': 'driver'};
      //   LogoutResponse response = await _apiClient.logout(data: data);
      //   expect(response, isA<LogoutResponse>());
      // });
    });
  });
}
