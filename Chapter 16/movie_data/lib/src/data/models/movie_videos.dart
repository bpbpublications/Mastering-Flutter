
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_videos.freezed.dart';
part 'movie_videos.g.dart';


@freezed
class MovieVideos with _$MovieVideos {
  const factory MovieVideos({
    @JsonKey(name: 'id')
    required int id,
    @JsonKey(name: 'results')
    required List<MovieVideo> results,
  }) = _MovieVideos;

  factory MovieVideos.fromJson(Map<String, dynamic> json) => _$MovieVideosFromJson(json);
}

@freezed
class MovieVideo with _$MovieVideo {
  const factory MovieVideo({
    @JsonKey(name: 'name')
    required String name,
    @JsonKey(name: 'key')
    required String key,
    @JsonKey(name: 'size')
    required int size,
    @JsonKey(name: 'official')
    required bool official,
    @JsonKey(name: 'published_at')
    required DateTime publishedAt,
    @JsonKey(name: 'id')
    required String id,
  }) = _MovieVideo;

  factory MovieVideo.fromJson(Map<String, dynamic> json) => _$MovieVideoFromJson(json);
}

