// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i13;
import '../../../application/fastLaugh/fastlaugh_bloc.dart' as _i14;
import '../../../application/home/homebloc_bloc.dart' as _i5;
import '../../../application/hot_and_new/hotandnew_bloc.dart' as _i8;
import '../../../application/search/bloc/search_bloc.dart' as _i15;
import '../../../infrastructure/downloads/downloads_repository.dart' as _i10;
import '../../../infrastructure/home/main_screen_implementation.dart' as _i4;
import '../../../infrastructure/hot_and_new/hot_and_new_implementation.dart'
    as _i7;
import '../../../infrastructure/search/search_implementation.dart' as _i12;
import '../../home/home_screen_service.dart' as _i3;
import '../../i_downloads%20_repo.dart' as _i9;
import '../../new_and_hot/hot_and_new_service.dart' as _i6;
import '../../search/search_services.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.HomeScreenService>(() => _i4.HomeScreenImplementation());
  gh.factory<_i5.HomeblocBloc>(
      () => _i5.HomeblocBloc(get<_i3.HomeScreenService>()));
  gh.lazySingleton<_i6.HotAndNewService>(() => _i7.HotAndNewImplementation());
  gh.factory<_i8.HotandnewBloc>(
      () => _i8.HotandnewBloc(get<_i6.HotAndNewService>()));
  gh.lazySingleton<_i9.IDownloadsRepo>(() => _i10.DownloadRepository());
  gh.lazySingleton<_i11.SearchService>(() => _i12.SearchImpl());
  gh.factory<_i13.DownloadsBloc>(
      () => _i13.DownloadsBloc(get<_i9.IDownloadsRepo>()));
  gh.factory<_i14.FastlaughBloc>(
      () => _i14.FastlaughBloc(get<_i9.IDownloadsRepo>()));
  gh.factory<_i15.SearchBloc>(() =>
      _i15.SearchBloc(get<_i9.IDownloadsRepo>(), get<_i11.SearchService>()));
  return get;
}
