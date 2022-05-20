import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/core/api_end_points.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/i_downloads%20_repo.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoits.downloads);

      print(ApiEndPoits.downloads);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadList = (response.data["results"] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        // for (final raw in response.data) {
        //   downloadList.add(Downloads.fromJson(raw as Map<String, dynamic>));
        // }

        print(downloadList.toString());

        return Right(downloadList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
