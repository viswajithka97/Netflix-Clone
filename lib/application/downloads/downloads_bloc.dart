import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/domain/i_downloads%20_repo.dart';
part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@Injectable()
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;

  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImages();

      emit(downloadsOption.fold(
        (failure) => state.copyWith(
          isLoading: true,
          downloadsFalureOrSuccess: Some(
            Left(failure),
          ),
        ),
        (success) => state.copyWith(
          isLoading: false,
          downloads: success,
          downloadsFalureOrSuccess: Some(
            Right(success),
          ),
        ),
      ));
    });
  }
}
