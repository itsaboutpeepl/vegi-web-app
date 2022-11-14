// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_analytics/firebase_analytics.dart' as _i4;
import 'package:firebase_core/firebase_core.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

import '../../services/apis/peeplEats.dart' as _i7;
import '../../services/apis/peeplPay.dart' as _i8;
import '../../services/apis/stripePay.dart' as _i10;
import '../../utils/log/log_it.dart' as _i11;
import '../network/services.dart' as _i15;
import '../router/routes.dart' as _i9;
import 'dio.dart' as _i12;
import 'firebase.dart' as _i13;
import 'logger_di.dart' as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioDi = _$DioDi();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final loggerDi = _$LoggerDi();
  final servicesModule = _$ServicesModule();
  gh.factory<_i3.Dio>(() => dioDi.dio);
  gh.lazySingleton<_i4.FirebaseAnalytics>(
      () => firebaseInjectableModule.firebaseAnalytics);
  await gh.factoryAsync<_i5.FirebaseApp>(
      () => firebaseInjectableModule.firebaseApp,
      preResolve: true);
  gh.lazySingleton<_i6.Logger>(() => loggerDi.logger);
  gh.lazySingleton<_i7.PeeplEatsService>(
      () => _i7.PeeplEatsService(get<_i3.Dio>()));
  gh.lazySingleton<_i8.PeeplPaySerivce>(
      () => _i8.PeeplPaySerivce(get<_i3.Dio>()));
  gh.singleton<_i9.RootRouter>(servicesModule.rootRouter);
  gh.lazySingleton<_i10.StripePayService>(
      () => _i10.StripePayService(get<_i3.Dio>()));
  gh.lazySingleton<_i11.LogIt>(() => _i11.LogIt(get<_i6.Logger>()));
  return get;
}

class _$DioDi extends _i12.DioDi {}

class _$FirebaseInjectableModule extends _i13.FirebaseInjectableModule {}

class _$LoggerDi extends _i14.LoggerDi {}

class _$ServicesModule extends _i15.ServicesModule {}
