import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/downloads/core/api_end_points.dart';
import 'package:netflix/domain/home/home_screen_service.dart';
import 'package:netflix/domain/home/model/main_screen/main_screen.dart';

@LazySingleton(as: HomeScreenService)
class HomeScreenImplementation implements HomeScreenService {
  @override
  Future<Either<MainFailure, MainScreenResp>> getAllTrendingVideos() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoits.downloads,
      );
      


      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = MainScreenResp.fromJson(response.data);

        // log("${response.data}");

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }

    
    
  }
  
}
