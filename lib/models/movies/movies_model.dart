import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_model.freezed.dart';
part 'movies_model.g.dart';

@freezed
abstract class MoviesModel with _$MoviesModel {
  const factory MoviesModel({
    @Default(0) int total,
    @Default(0) int page,
    @Default(0) int pages,
    @JsonKey(name: 'tv_shows') @Default([]) List<TvShows> tvShows,
  }) = _MoviesModel;

  factory MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesModelFromJson(json);
}

@freezed
abstract class TvShows with _$TvShows {
  const factory TvShows({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'permalink') @Default('') String permalink,
    @JsonKey(name: 'start_date') @Default('') String startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'country') @Default('') String country,
    @JsonKey(name: 'network') @Default('') String network,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'image_thumbnail_path')
    @Default('')
    String imageThumbnailPath,
  }) = _TvShows;

  factory TvShows.fromJson(Map<String, dynamic> json) =>
      _$TvShowsFromJson(json);
}
