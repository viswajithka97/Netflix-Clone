part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadsFalureOrSuccess,
    required List<Downloads> downloads,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: false,
      downloadsFalureOrSuccess: None(),
      downloads: [],
    );
  }
}
