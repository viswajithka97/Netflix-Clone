part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughEvent with _$FastlaughEvent {
  const factory FastlaughEvent.initialize() = Initialize;
  const factory FastlaughEvent.likeVideo({required int id}) = LikeVideo;
  const factory FastlaughEvent.unLikeVideo({required int id}) = UnLikeVideo;
}
