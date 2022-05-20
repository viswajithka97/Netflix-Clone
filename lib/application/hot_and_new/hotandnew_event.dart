part of 'hotandnew_bloc.dart';

@freezed
class HotandnewEvent with _$HotandnewEvent {
  const factory HotandnewEvent.loadDataInComingSoon() = LoadDataInComingSoon;
  const factory HotandnewEvent.loadDataInEveryOnesWatching() =
      LoadDataInEveryOnesWatching;
}
