import 'package:dio/dio.dart';
import 'package:hacker_news/app/data/models/ask/ask.dart';
import 'package:hacker_news/app/data/models/job/job.dart';
import 'package:hacker_news/app/data/models/poll/poll.dart';
import 'package:hacker_news/app/data/models/story/story.dart';
import 'package:retrofit/retrofit.dart';

import '../models/author/author.dart';
import '../models/comment/comment.dart';
import 'apis.dart';

part 'apiClient.g.dart';

@RestApi(baseUrl: "https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1/")
abstract class ApiClient {
  static String baseUrl = "https://hacker-news.firebaseio.com/v0/";

  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  //----------------------Public endpoints-----------------------------

  @GET('${Apis.item}{id}.json')
  Future<Story> fetchStory(
    @Query('print') String queryParam,
    @Path('id') String id,
  );

  @GET('${Apis.user}{username}.json')
  Future<Author> fetchUser(
    @Query('print') String queryParam,
    @Path('username') String username,
  );

  @GET(Apis.newStories)
  Future<dynamic> fetchNewStories();

  @GET(Apis.topStories)
  Future<dynamic> fetchTopStories();

  @GET(Apis.bestStories)
  Future<dynamic> fetchBestStories();

  @GET(Apis.storySample)
  Future<dynamic> fetchStorySample(
    @Query('print') String queryParam,
    // @Body() Map<String, dynamic> data,
  );

  @GET(Apis.commentSample)
  Future<dynamic> fetchCommentSample(
    @Query('print') String queryParam,
    // @Body() Map<String, dynamic> data,
  );

  @GET('${Apis.item}{commentId}.json')
  Future<Comment> fetchComment(
    @Query('print') String queryParam,
    @Path('commentId') String commentId,
  );

  @GET('${Apis.item}{pollId}.json')
  Future<Poll> fetchPoll(
    @Query('print') String queryParam,
    @Path('pollId') String pollId,
  );

  @GET('${Apis.item}{askId}.json')
  Future<Ask> fetchAsk(
    @Query('print') String queryParam,
    @Path('askId') String askId,
  );

  @GET('${Apis.item}{jobId}.json')
  Future<Job> fetchJob(
    @Query('print') String queryParam,
    @Path('jobId') String jobId,
  );

  @GET(Apis.askSample)
  Future<dynamic> fetchAskSample(
    @Query('print') String queryParam,
    // @Body() Map<String, dynamic> data,
  );

  @GET(Apis.jobSample)
  Future<dynamic> fetchJobSample(
    @Query('print') String queryParam,
    // @Body() Map<String, dynamic> data,
  );

  @GET(Apis.pollSample)
  Future<dynamic> fetchPollSample(
    @Query('print') String queryParam,
    // @Body() Map<String, dynamic> data,
  );
}
