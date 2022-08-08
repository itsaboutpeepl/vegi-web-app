// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;

import '../../services/apis/peeplEats.dart' as _i5;
import '../../services/apis/peeplPay.dart' as _i6;
import '../../services/apis/stripePay.dart' as _i8;
import '../../utils/log/log_it.dart' as _i9;
import '../network/services.dart' as _i12;
import '../router/routes.dart' as _i7;
import 'dio.dart' as _i10;
import 'logger_di.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioDi = _$DioDi();
  final loggerDi = _$LoggerDi();
  final servicesModule = _$ServicesModule();
  gh.factory<_i3.Dio>(() => dioDi.dio);
  gh.lazySingleton<_i4.Logger>(() => loggerDi.logger);
  gh.lazySingleton<_i5.PeeplEatsService>(
      () => _i5.PeeplEatsService(get<_i3.Dio>()));
  gh.lazySingleton<_i6.PeeplPaySerivce>(
      () => _i6.PeeplPaySerivce(get<_i3.Dio>()));
  gh.singleton<_i7.RootRouter>(servicesModule.rootRouter);
  gh.lazySingleton<_i8.StripePayService>(
      () => _i8.StripePayService(get<_i3.Dio>()));
  gh.lazySingleton<_i9.LogIt>(() => _i9.LogIt(get<_i4.Logger>()));
  return get;
}

class _$DioDi extends _i10.DioDi {}

class _$LoggerDi extends _i11.LoggerDi {}

class _$ServicesModule extends _i12.ServicesModule {}
