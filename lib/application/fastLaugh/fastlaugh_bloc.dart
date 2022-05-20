import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/domain/i_downloads%20_repo.dart';

part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';
part 'fastlaugh_bloc.freezed.dart';

final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"
];

@Injectable()
class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  FastlaughBloc(IDownloadsRepo _downloadsService)
      : super(FastlaughState.initialize()) {
    on<Initialize>((event, emit) async {
      // sending loading
      emit(const FastlaughState(
        videosList: [],
        isLoading: true,
        isError: false,
      ));

      // getTrending movies

      final _result = await _downloadsService.getDownloadsImages();

      final _state = _result.fold((MainFailure failure) {
        return FastlaughState(
          videosList: [],
          isLoading: false,
          isError: true,
        );
      }, (success) {
        return FastlaughState(
          videosList: success,
          isLoading: false,
          isError: false,
        );
      });

      // show to ui

      emit(_state);
    });

    on<LikeVideo>((event, emit) async {
      // var list = state.likedVideosList;

      // list.add(event.id);

      // emit(state.copyWith(likedVideosList: list));
    });
    on<UnLikeVideo>((event, emit) {
      // var list = state.likedVideosList;

      // list.remove(event.id);
      // emit(state.copyWith(likedVideosList: list));
    });
  }
}
