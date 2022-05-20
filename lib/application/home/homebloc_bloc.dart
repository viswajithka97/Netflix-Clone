import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/home/home_screen_service.dart';
import 'package:netflix/domain/home/model/main_screen/main_screen.dart';

part 'homebloc_event.dart';
part 'homebloc_state.dart';
part 'homebloc_bloc.freezed.dart';

@Injectable()
class HomeblocBloc extends Bloc<HomeblocEvent, HomeblocState> {
  final HomeScreenService _homeScreenService;
  HomeblocBloc(this._homeScreenService) : super(HomeblocState.initial()) {
    on<LoadTrendingMovies>((event, emit) async {
      emit(
        const HomeblocState(
          moviesList: [],
          isLoading: true,
          isError: false,
        ),
      );
      final _result = await _homeScreenService.getAllTrendingVideos();

      final newState = _result.fold((failure) {
        return const HomeblocState(
          moviesList: [],
          isLoading: false,
          isError: true,
        );
      }, (succes) {
        return HomeblocState(
          moviesList: succes.results,
          isLoading: false,
          isError: false,
        );
      });

      emit(newState);
    });
  }
}
