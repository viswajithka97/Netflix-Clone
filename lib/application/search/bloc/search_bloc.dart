import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/domain/i_downloads%20_repo.dart';
import 'package:netflix/domain/search/models/search_resp/search_resp.dart';
import 'package:netflix/domain/search/search_services.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadService;
  final SearchService _searchService;

  SearchBloc(this._downloadService, this._searchService)
      : super(SearchState.initial()) {
    /* 
    idle State
     */
    on<Intialize>((event, emit) async {
      if (state.IdleList.isNotEmpty) {
        // ignore: invalid_use_of_visible_for_testing_member
        emit(SearchState(
          searchResultData: [],
          IdleList: state.IdleList,
          isLoading: false,
          isError: false,
        ));

        return;
      }

      emit(const SearchState(
        searchResultData: [],
        IdleList: [],
        isLoading: true,
        isError: false,
      ));

      //get Trending
      final _result = await _downloadService.getDownloadsImages();

      _result.fold((MainFailure faiure) {
        emit(const SearchState(
          searchResultData: [],
          IdleList: [],
          isLoading: false,
          isError: true,
        ));
      }, (List<Downloads> succes) {
        emit(SearchState(
          searchResultData: [],
          IdleList: succes,
          isLoading: false,
          isError: false,
        ));
      });
      // show to ui
    });

    /* 
    idle State
     */
    on<SearchMovie>((event, emit) async {
      log("searching for ${event.query}");
      // search api

      emit(
        const SearchState(
          searchResultData: [],
          IdleList: [],
          isLoading: true,
          isError: false,
        ),
      );

      final resulut = await _searchService.searchMovies(query: event.query);

      final _state = resulut.fold(
        (MainFailure failure) {
          return const SearchState(
            searchResultData: [],
            IdleList: [],
            isLoading: true,
            isError: false,
          );
        },
        (SearchResp success) {
          return SearchState(
            searchResultData: success.results!,
            IdleList: [],
            isLoading: false,
            isError: false,
          );
        },
      );

      print(resulut);

      // show to ui

      emit(_state);
    });
  }
}
