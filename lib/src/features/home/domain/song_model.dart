// ignore_for_file: invalid_annotation_target
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'song_model.freezed.dart';
part 'song_model.g.dart';

@freezed

/// SafetyLink Entity class
class Song with _$Song {
  /// Factory constructor for Song
  factory Song({
    @JsonKey(name: 'songname') String? songName,
    @JsonKey(name: 'artist') String? artist,
    @JsonKey(name: 'imageurl') String? imageUrl,
  }) = _Song;

  /// From json method to convert to object
  factory Song.fromJson(Map<String, dynamic> json) =>
      _$SongFromJson(json);
}
