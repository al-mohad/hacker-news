import 'package:get/get.dart';
import 'package:hacker_news/app/data/enums/states.dart';
import 'package:hacker_news/app/data/models/ask/ask.dart';
import 'package:hacker_news/app/data/models/author/author.dart';
import 'package:hacker_news/app/data/models/job/job.dart';
import 'package:hacker_news/app/data/models/poll/poll.dart';
import 'package:hacker_news/app/data/models/story/story.dart';
import 'package:hacker_news/app/data/repositories/news_repository.dart';
import 'package:hacker_news/app/modules/home/views/story_details_view.dart';

import '../../../data/models/comment/comment.dart';
import '../../../data/repositories/user_repository.dart';

class HomeController extends GetxController {
  late NewsRepository _newsRepository;
  late UserRepository _userRepository;

  final _viewState = ViewState.idle.obs;
  ViewState get viewState => _viewState.value;

  final _storyListCount = [].obs;

  final _stories = RxList<Story>();
  List<Story> get stories => _stories;

  final _comments = RxList<Comment>();
  List<Comment> get comments => _comments;

  final _polls = RxList<Poll>();
  List<Poll> get polls => _polls;

  final _asks = RxList<Ask>();
  List<Ask> get asks => _asks;

  final _jobs = RxList<Job>();
  List<Job> get jobs => _jobs;

  int page = 1;

  List<String> storiesCategory = ['new', 'top', 'best'];
  final _selectedStoriesCategory = 'new'.obs;
  String get selectedStoriesCategory => _selectedStoriesCategory.value;

  final _selectStory = Rxn<Story>();
  Story? get selectedStory => _selectStory.value;

  final _author = Rxn<Author>();
  Author? get author => _author.value;

  @override
  void onInit() {
    _newsRepository = NewsRepository();
    _userRepository = UserRepository();
    fetchTopStory();
    super.onInit();
  }

  fetchNewStory() async {
    _viewState.value = ViewState.busy;
    final storyIds = await _newsRepository.getNewStories();
    _storyListCount.value = storyIds;

    final paginatedStoryIds =
        _storyListCount.skip((page - 1) * 10).take(10).toList();

    for (final id in paginatedStoryIds) {
      Story story = await _newsRepository.getStory(
        queryParam: 'pretty',
        id: id.toString(),
      );
      _stories.add(story);

      update([page++]);
    }
    _viewState.value = ViewState.idle;
  }

  fetchTopStory() async {
    _viewState.value = ViewState.busy;
    final storyIds = await _newsRepository.getTopStories();
    _storyListCount.value = storyIds;

    final paginatedStoryIds =
        _storyListCount.skip((page - 1) * 10).take(10).toList();

    for (final id in paginatedStoryIds) {
      Story story = await _newsRepository.getStory(
        queryParam: 'pretty',
        id: id.toString(),
      );
      _stories.add(story);

      update([page++]);
    }
    _viewState.value = ViewState.idle;
  }

  fetchBestStory() async {
    _viewState.value = ViewState.busy;

    final storyIds = await _newsRepository.getBestStories();
    _storyListCount.value = storyIds;

    final paginatedStoryIds =
        _storyListCount.skip((page - 1) * 10).take(10).toList();

    for (final id in paginatedStoryIds) {
      Story story = await _newsRepository.getStory(
        queryParam: 'pretty',
        id: id.toString(),
      );
      _stories.add(story);

      update([page++]);
    }
    _viewState.value = ViewState.idle;
  }

  void changeSelectedStoryCategory(String category) {
    _selectedStoriesCategory.value = category;
    switch (category) {
      case 'new':
        fetchNewStory();
        break;
      case 'top':
        fetchTopStory();
        break;
      case 'best':
        fetchBestStory();
        break;
    }
  }

  fetchStoryDetails({required Story story}) async {
    _selectStory.value = story;
    _comments.clear();
    _polls.clear();
    _jobs.clear();
    _asks.clear();

    Get.to(() => const StoryDetailsView());
    await getUserInfo(username: story.by);
    await fetchComments(commentsId: story.kids);
    await fetchPolls(pollsIds: story.poll);
    await fetchAsks(askIds: story.kids);
    await fetchJobs(jobsIds: story.kids);
  }

  getUserInfo({required String username}) async {
    Author author = await _userRepository.getUser(
      queryParam: 'pretty',
      username: username,
    );
    _author.value = author;
    update();
  }

  fetchComments({required List<int>? commentsId}) async {
    if (commentsId == null) return;
    for (final id in commentsId) {
      Comment comment = await _newsRepository.getComment(
        queryParam: 'pretty',
        id: id.toString(),
      );
      _comments.add(comment);
    }
  }

  fetchPolls({required List<int>? pollsIds}) async {
    if (pollsIds == null) return;
    for (final id in pollsIds) {
      Poll poll = await _newsRepository.getPoll(
        queryParam: 'pretty',
        id: id.toString(),
      );
      _polls.add(poll);
    }
  }

  fetchAsks({required List<int>? askIds}) async {
    if (askIds == null) return;
    for (final id in askIds) {
      Ask ask = await _newsRepository.getAsk(
        queryParam: 'pretty',
        id: id.toString(),
      );
      _asks.add(ask);
    }
  }

  fetchJobs({required List<int>? jobsIds}) async {
    if (jobsIds == null) return;
    for (final id in jobsIds) {
      Job job = await _newsRepository.getJob(
        queryParam: 'pretty',
        id: id.toString(),
      );
      _jobs.add(job);
    }
  }
}
