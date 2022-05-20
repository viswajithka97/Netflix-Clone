import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/new_and_hot/hot_and_new_service.dart';
import 'package:netflix/domain/new_and_hot/models/hot_and_new_resp/hot_and_new_resp.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@Injectable()
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final HotAndNewService _hotAndNewService;

  HotandnewBloc(this._hotAndNewService) : super(HotandnewState.initial()) {
    // get hot and new movie data

    on<LoadDataInComingSoon>((event, emit) async {
      // sending loading
      emit(const HotandnewState(
          comingSoonList: [],
          everyOnesWatchingList: [],
          isLoading: true,
          isError: false));
      final _result = await _hotAndNewService.getHotAndNewMovieData();

      final newState = _result.fold((failure) {
        return const HotandnewState(
            comingSoonList: [],
            everyOnesWatchingList: [],
            isLoading: false,
            isError: true);
      }, (success) {
        return HotandnewState(
            comingSoonList: success.results,
            everyOnesWatchingList: state.everyOnesWatchingList,
            isLoading: false,
            isError: false);
      });

      emit(newState);
    });
    on<LoadDataInEveryOnesWatching>((event, emit) async {});
  }
}
