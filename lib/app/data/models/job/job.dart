import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';
part 'job.g.dart';

@freezed
class Job with _$Job {
  const Job._();
  const factory Job({
    required String? by,
    required int? id,
    required int? score,
    required String? text,
    required int? time,
    required String? title,
    required String? type,
    required String? url,
  }) = _Job;

  factory Job.empty() => const Job(
        by: '',
        id: 0,
        score: 0,
        text: '',
        time: 0,
        title: '',
        type: '',
        url: '',
      );

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}
