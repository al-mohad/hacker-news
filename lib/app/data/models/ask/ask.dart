import 'package:freezed_annotation/freezed_annotation.dart';

part 'ask.freezed.dart';
part 'ask.g.dart';

@freezed
class Ask with _$Ask {
  const Ask._();
  const factory Ask({
    required String? by,
    required int? descendants,
    required int? id,
    required List<int>? kids,
    required int? score,
    required String? text,
    required int? time,
    required String? title,
    required String? type,
  }) = _Ask;

  factory Ask.empty() => const Ask(
        by: '',
        descendants: 0,
        id: 0,
        kids: [],
        score: 0,
        text: '',
        time: 0,
        title: '',
        type: '',
      );

  factory Ask.fromJson(Map<String, dynamic> json) => _$AskFromJson(json);
}
