import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';
part 'author.g.dart';

@freezed
class Author with _$Author {
  const Author._();
  const factory Author({
    required String? about,
    required int? created,
    required String? id,
    required List<int>? submitted,
    required int? delay,
    required int? karma,
  }) = _Author;

  factory Author.empty() => const Author(
        about: '',
        created: 0,
        id: '',
        submitted: [],
        delay: 0,
        karma: 0,
      );

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
