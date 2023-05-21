import 'package:dio/dio.dart';
import 'package:hacker_news/app/data/models/story/story.dart';
import 'package:hacker_news/app/data/network/apis.dart';

class TestAPIClient {
  final dio = Dio();

  static String baseUrl = "https://hacker-news.firebaseio.com/v0/";

  static const headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
  };

  fetchStoriesLength({required String category}) async {
    Response response;
    response = await dio.get(
      '$baseUrl/$category',
      // data: data,
      // queryParameters: queries,
      options: Options(headers: headers),
    );
    return response.data;
  }

  fetchItem({
    required String storyId,
    required Map<String, dynamic> queries,
  }) async {
    Response response;
    response = await dio.get(
      '$baseUrl${Apis.item}$storyId.json',
      // data: data,
      queryParameters: queries,
      options: Options(headers: headers),
    );
    return response;
  }

  Future<List<Story>> fetchStories({
    required List<dynamic> storiesId,
    required Map<String, dynamic> queries,
  }) async {
    List<Story> stories = [];
    for (var i = 0; i < 10; i++) {
      String storyId = storiesId.elementAt(i).toString();
      Response response = await dio.get(
        '$baseUrl${Apis.item}$storyId.json',
        // queryParameters: queries,
        options: Options(headers: headers),
      );
      Story story = Story.fromJson(response.data);
      stories.add(story);
    }
    return stories;
  }

  //cases
  request() async {
    Response response;
    response = await dio.get('/test?id=12&name=dio');
    print(response.data.toString());
    // The below request is the same as above.
    response = await dio.get(
      '/test',
      queryParameters: {'id': 12, 'name': 'dio'},
    );
    print(response.data.toString());
    return response;
  }
}
