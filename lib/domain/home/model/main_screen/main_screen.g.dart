// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_screen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainScreenResp _$MainScreenRespFromJson(Map<String, dynamic> json) =>
    MainScreenResp(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MainScreenData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MainScreenRespToJson(MainScreenResp instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

MainScreenData _$MainScreenDataFromJson(Map<String, dynamic> json) =>
    MainScreenData(
      video: json['video'] as bool?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      overview: json['overview'] as String?,
      releaseDate: json['release_date'] as String?,
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      voteCount: json['vote_count'] as int?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      title: json['title'] as String?,
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      id: json['id'] as int?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      mediaType: json['media_type'] as String?,
    );

Map<String, dynamic> _$MainScreenDataToJson(MainScreenData instance) =>
    <String, dynamic>{
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'vote_count': instance.voteCount,
      'genre_ids': instance.genreIds,
      'title': instance.title,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'id': instance.id,
      'popularity': instance.popularity,
      'media_type': instance.mediaType,
    };
