import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/downloads/core/api_end_points.dart';
import 'package:netflix/domain/search/models/search_resp/search_resp.dart';
import 'package:netflix/domain/search/search_services.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchResp>> searchMovies({required query}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoits.search,
        queryParameters: {'query': query},
      );

      // print(ApiEndPoits.search);
      log("${response.data}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResp.fromJson(response.data);

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
