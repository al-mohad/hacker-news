import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';
part 'story.g.dart';

@freezed
class Story with _$Story {
  const Story._();
  const factory Story({
    required String by,
    required int descendants,
    required int id,
    required List<int>? kids,
    required int score,
    required int time,
    required String title,
    required String type,
    required String? url,
    required bool? deleted,
    required String? text,
    required bool? dead,
    required int? parent,
    required dynamic poll,
    required dynamic parts,
  }) = _Story;

  factory Story.empty() => const Story(
        by: '',
        descendants: 0,
        id: 0,
        kids: [],
        score: 0,
        time: 0,
        title: '',
        type: '',
        url: '',
        deleted: true,
        text: '',
        dead: true,
        parent: 0,
        poll: null,
        parts: null,
      );

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
