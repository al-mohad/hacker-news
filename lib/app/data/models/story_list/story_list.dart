import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_list.freezed.dart';
part 'story_list.g.dart';

@freezed
class StoryListCount with _$StoryListCount {
  const StoryListCount._();
  const factory StoryListCount({
    required List<int> counts,
  }) = _StoryListCount;

  factory StoryListCount.empty() => const StoryListCount(counts: []);

  factory StoryListCount.fromJson(Map<String, dynamic> json) =>
      _$StoryListCountFromJson(json);
}
