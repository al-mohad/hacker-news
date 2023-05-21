import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll.freezed.dart';
part 'poll.g.dart';

@freezed
class Poll with _$Poll {
  const Poll._();
  const factory Poll({
    required String? by,
    required int? descendants,
    required int? id,
    required List<int>? kids,
    required List<int>? parts,
    required int? score,
    required String? text,
    required int? time,
    required String? title,
    required String? type,
  }) = _Poll;

  factory Poll.empty() => const Poll(
        by: '',
        descendants: 0,
        id: 0,
        score: 0,
        text: '',
        kids: [],
        parts: [],
        time: 0,
        title: '',
        type: '',
      );

  factory Poll.fromJson(Map<String, dynamic> json) => _$PollFromJson(json);
}
