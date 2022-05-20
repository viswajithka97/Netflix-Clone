part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughState with _$FastlaughState {
  const factory FastlaughState({
    required List<Downloads> videosList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory FastlaughState.initialize() => FastlaughState(
        videosList: [],
        isLoading: true,
        isError: false,
      );
}
