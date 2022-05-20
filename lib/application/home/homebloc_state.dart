part of 'homebloc_bloc.dart';

@freezed
class HomeblocState with _$HomeblocState {
  const factory HomeblocState(
      {required List<MainScreenData>? moviesList,
      required bool isLoading,
      required bool isError}) = _Initial;

  factory HomeblocState.initial() =>
      const HomeblocState(moviesList: [], isLoading: false, isError: false);
}
