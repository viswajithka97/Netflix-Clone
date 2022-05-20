part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required List<HotAndNewData>? comingSoonList,
    required List<HotAndNewData> everyOnesWatchingList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HotandnewState.initial() => const HotandnewState(
      comingSoonList: [],
      everyOnesWatchingList: [],
      isError: false,
      isLoading: false);
}
