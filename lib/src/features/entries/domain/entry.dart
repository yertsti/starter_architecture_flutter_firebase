import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_architecture_flutter_firebase/src/features/jobs/domain/job.dart';

part 'entry.freezed.dart';
part 'entry.g.dart';

typedef EntryID = String;

@freezed
class Entry with _$Entry {
  const factory Entry({
    required EntryID id,
    required JobID jobId,
    required DateTime start,
    required DateTime end,
    required String comment,
  }) = _Entry;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  double get durationInHours =>
      end.difference(start).inMinutes.toDouble() / 60.0;

}
