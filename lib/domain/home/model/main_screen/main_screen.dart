import 'package:json_annotation/json_annotation.dart';
part 'main_screen.g.dart';

@JsonSerializable()
class MainScreenResp {
  int? page;
  List<MainScreenData>? results;

  MainScreenResp({this.page, this.results});

  factory MainScreenResp.fromJson(Map<String, dynamic> json) {
    return _$MainScreenRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MainScreenRespToJson(this);
}

@JsonSerializable()
class MainScreenData {
  bool? video;
  @JsonKey(name: 'vote_average')
  double? voteAverage;
  String? overview;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'vote_count')
  int? voteCount;
  @JsonKey(name: 'genre_ids')
  List<int>? genreIds;
  String? title;
  @JsonKey(name: 'original_language')
  String? originalLanguage;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  int? id;
  double? popularity;
  @JsonKey(name: 'media_type')
  String? mediaType;

  MainScreenData({
    this.video,
    this.voteAverage,
    this.overview,
    this.releaseDate,
    this.adult,
    this.backdropPath,
    this.voteCount,
    this.genreIds,
    this.title,
    this.originalLanguage,
    this.originalTitle,
    this.posterPath,
    this.id,
    this.popularity,
    this.mediaType,
  });

  factory MainScreenData.fromJson(Map<String, dynamic> json) {
    return _$MainScreenDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MainScreenDataToJson(this);
}
