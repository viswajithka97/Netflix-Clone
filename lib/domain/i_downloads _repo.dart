import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/main_failure.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
