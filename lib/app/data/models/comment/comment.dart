import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  const Comment._();
  const factory Comment({
    required String? by,
    required dynamic id,
    required int? created,
    required List<int>? kids,
    required int? parent,
    required String? text,
    required String? type,
  }) = _Comment;

  factory Comment.empty() => const Comment(
        by: '',
        created: 0,
        id: null,
        kids: [],
        parent: 0,
        text: '',
        type: '',
      );

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
