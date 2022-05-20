import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:netflix/domain/home/model/main_screen/main_screen.dart';

abstract class HomeScreenService {
  Future<Either<MainFailure, MainScreenResp>> getAllTrendingVideos();
}
