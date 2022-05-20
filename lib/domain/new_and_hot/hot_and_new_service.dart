import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:netflix/domain/new_and_hot/models/hot_and_new_resp/hot_and_new_resp.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewMovieData();
  Future<Either<MainFailure, HotAndNewResp>> getHotAndNewTveData();
}
