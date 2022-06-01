part of 'homebloc_bloc.dart';

@freezed
class HomeblocEvent with _$HomeblocEvent {
  const factory HomeblocEvent.loadTrendingMovies() = LoadTrendingMovies;
 
}
