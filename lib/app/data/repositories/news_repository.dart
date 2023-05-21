import 'package:hacker_news/app/data/models/ask/ask.dart';
import 'package:hacker_news/app/data/models/job/job.dart';
import 'package:hacker_news/app/data/models/poll/poll.dart';

import '../models/comment/comment.dart';
import '../models/story/story.dart';
import '../network/network.dart';

class NewsRepository {
  late NetworkProvider _networkProvider;

  NewsRepository() {
    _networkProvider = NetworkProvider.instance;
  }

  Future<dynamic> getNewStories() =>
      _networkProvider.apiClient.fetchNewStories();

  Future<dynamic> getTopStories() =>
      _networkProvider.apiClient.fetchTopStories();

  Future<dynamic> getBestStories() =>
      _networkProvider.apiClient.fetchBestStories();

  Future<dynamic> fetchStory({
    // required Map<String, dynamic> data,
    required String queryParam,
  }) {
    return _networkProvider.apiClient.fetchStorySample(queryParam);
  }

  Future<Story> getStory({
    required String queryParam,
    required String id,
  }) {
    return _networkProvider.apiClient.fetchStory(queryParam, id);
  }

  Future<Comment> getComment({
    required String queryParam,
    required String id,
  }) {
    return _networkProvider.apiClient.fetchComment(queryParam, id);
  }

  Future<Poll> getPoll({
    required String queryParam,
    required String id,
  }) {
    return _networkProvider.apiClient.fetchPoll(queryParam, id);
  }

  Future<Ask> getAsk({
    required String queryParam,
    required String id,
  }) {
    return _networkProvider.apiClient.fetchAsk(queryParam, id);
  }

  Future<Job> getJob({
    required String queryParam,
    required String id,
  }) {
    return _networkProvider.apiClient.fetchJob(queryParam, id);
  }
}
