import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:netflix/domain/search/models/search_resp/search_resp.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResp>> searchMovies({required query});
}
