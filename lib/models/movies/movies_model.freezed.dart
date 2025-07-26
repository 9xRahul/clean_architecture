// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoviesModel {
  int get total;
  int get page;
  int get pages;
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShows;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoviesModelCopyWith<MoviesModel> get copyWith =>
      _$MoviesModelCopyWithImpl<MoviesModel>(this as MoviesModel, _$identity);

  /// Serializes this MoviesModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoviesModel &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other.tvShows, tvShows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages,
      const DeepCollectionEquality().hash(tvShows));

  @override
  String toString() {
    return 'MoviesModel(total: $total, page: $page, pages: $pages, tvShows: $tvShows)';
  }
}

/// @nodoc
abstract mixin class $MoviesModelCopyWith<$Res> {
  factory $MoviesModelCopyWith(
          MoviesModel value, $Res Function(MoviesModel) _then) =
      _$MoviesModelCopyWithImpl;
  @useResult
  $Res call(
      {int total,
      int page,
      int pages,
      @JsonKey(name: 'tv_shows') List<TvShows> tvShows});
}

/// @nodoc
class _$MoviesModelCopyWithImpl<$Res> implements $MoviesModelCopyWith<$Res> {
  _$MoviesModelCopyWithImpl(this._self, this._then);

  final MoviesModel _self;
  final $Res Function(MoviesModel) _then;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShows = null,
  }) {
    return _then(_self.copyWith(
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShows: null == tvShows
          ? _self.tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MoviesModel implements MoviesModel {
  const _MoviesModel(
      {this.total = 0,
      this.page = 0,
      this.pages = 0,
      @JsonKey(name: 'tv_shows') final List<TvShows> tvShows = const []})
      : _tvShows = tvShows;
  factory _MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesModelFromJson(json);

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pages;
  final List<TvShows> _tvShows;
  @override
  @JsonKey(name: 'tv_shows')
  List<TvShows> get tvShows {
    if (_tvShows is EqualUnmodifiableListView) return _tvShows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShows);
  }

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MoviesModelCopyWith<_MoviesModel> get copyWith =>
      __$MoviesModelCopyWithImpl<_MoviesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MoviesModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesModel &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._tvShows, _tvShows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages,
      const DeepCollectionEquality().hash(_tvShows));

  @override
  String toString() {
    return 'MoviesModel(total: $total, page: $page, pages: $pages, tvShows: $tvShows)';
  }
}

/// @nodoc
abstract mixin class _$MoviesModelCopyWith<$Res>
    implements $MoviesModelCopyWith<$Res> {
  factory _$MoviesModelCopyWith(
          _MoviesModel value, $Res Function(_MoviesModel) _then) =
      __$MoviesModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int total,
      int page,
      int pages,
      @JsonKey(name: 'tv_shows') List<TvShows> tvShows});
}

/// @nodoc
class __$MoviesModelCopyWithImpl<$Res> implements _$MoviesModelCopyWith<$Res> {
  __$MoviesModelCopyWithImpl(this._self, this._then);

  final _MoviesModel _self;
  final $Res Function(_MoviesModel) _then;

  /// Create a copy of MoviesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShows = null,
  }) {
    return _then(_MoviesModel(
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShows: null == tvShows
          ? _self._tvShows
          : tvShows // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ));
  }
}

/// @nodoc
mixin _$TvShows {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'permalink')
  String get permalink;
  @JsonKey(name: 'start_date')
  String get startDate;
  @JsonKey(name: 'end_date')
  String? get endDate;
  @JsonKey(name: 'country')
  String get country;
  @JsonKey(name: 'network')
  String get network;
  @JsonKey(name: 'status')
  String get status;
  @JsonKey(name: 'image_thumbnail_path')
  String get imageThumbnailPath;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TvShowsCopyWith<TvShows> get copyWith =>
      _$TvShowsCopyWithImpl<TvShows>(this as TvShows, _$identity);

  /// Serializes this TvShows to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TvShows &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, permalink, startDate,
      endDate, country, network, status, imageThumbnailPath);

  @override
  String toString() {
    return 'TvShows(id: $id, name: $name, permalink: $permalink, startDate: $startDate, endDate: $endDate, country: $country, network: $network, status: $status, imageThumbnailPath: $imageThumbnailPath)';
  }
}

/// @nodoc
abstract mixin class $TvShowsCopyWith<$Res> {
  factory $TvShowsCopyWith(TvShows value, $Res Function(TvShows) _then) =
      _$TvShowsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'permalink') String permalink,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'network') String network,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath});
}

/// @nodoc
class _$TvShowsCopyWithImpl<$Res> implements $TvShowsCopyWith<$Res> {
  _$TvShowsCopyWithImpl(this._self, this._then);

  final TvShows _self;
  final $Res Function(TvShows) _then;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? permalink = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? imageThumbnailPath = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _self.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _self.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TvShows implements TvShows {
  const _TvShows(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'permalink') this.permalink = '',
      @JsonKey(name: 'start_date') this.startDate = '',
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'country') this.country = '',
      @JsonKey(name: 'network') this.network = '',
      @JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'image_thumbnail_path') this.imageThumbnailPath = ''});
  factory _TvShows.fromJson(Map<String, dynamic> json) =>
      _$TvShowsFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'permalink')
  final String permalink;
  @override
  @JsonKey(name: 'start_date')
  final String startDate;
  @override
  @JsonKey(name: 'end_date')
  final String? endDate;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'network')
  final String network;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'image_thumbnail_path')
  final String imageThumbnailPath;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TvShowsCopyWith<_TvShows> get copyWith =>
      __$TvShowsCopyWithImpl<_TvShows>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TvShowsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TvShows &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, permalink, startDate,
      endDate, country, network, status, imageThumbnailPath);

  @override
  String toString() {
    return 'TvShows(id: $id, name: $name, permalink: $permalink, startDate: $startDate, endDate: $endDate, country: $country, network: $network, status: $status, imageThumbnailPath: $imageThumbnailPath)';
  }
}

/// @nodoc
abstract mixin class _$TvShowsCopyWith<$Res> implements $TvShowsCopyWith<$Res> {
  factory _$TvShowsCopyWith(_TvShows value, $Res Function(_TvShows) _then) =
      __$TvShowsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'permalink') String permalink,
      @JsonKey(name: 'start_date') String startDate,
      @JsonKey(name: 'end_date') String? endDate,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'network') String network,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'image_thumbnail_path') String imageThumbnailPath});
}

/// @nodoc
class __$TvShowsCopyWithImpl<$Res> implements _$TvShowsCopyWith<$Res> {
  __$TvShowsCopyWithImpl(this._self, this._then);

  final _TvShows _self;
  final $Res Function(_TvShows) _then;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? permalink = null,
    Object? startDate = null,
    Object? endDate = freezed,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? imageThumbnailPath = null,
  }) {
    return _then(_TvShows(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _self.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: freezed == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _self.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
