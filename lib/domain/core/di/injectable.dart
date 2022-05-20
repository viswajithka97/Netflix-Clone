import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:netflix/domain/core/di/injectable.config.dart';
import 'injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future configureInjection() async {
  await $initGetIt(getIt, environment: Environment.prod);
}
