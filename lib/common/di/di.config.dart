// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_core/firebase_core.dart' as _i4;
import 'package:firebase_messaging/firebase_messaging.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;
import 'package:wallet_core/wallet_core.dart' as _i7;

import '../../services/apis/peeplEats.dart' as _i9;
import '../../services/apis/peeplPay.dart' as _i10;
import '../../services/apis/stripePay.dart' as _i12;
import '../../utils/log/log_it.dart' as _i13;
import '../network/services.dart' as _i16;
import '../router/routes.dart' as _i11;
import 'dio.dart' as _i14;
import 'firebase.dart' as _i15;
import 'logger_di.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioDi = _$DioDi();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final servicesModule = _$ServicesModule();
  final loggerDi = _$LoggerDi();
  gh.factory<_i3.Dio>(() => dioDi.dio);
  await gh.factoryAsync<_i4.FirebaseApp>(
      () => firebaseInjectableModule.firebaseApp,
      preResolve: true);
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseMessaging>(
      () => firebaseInjectableModule.firebaseMessaging);
  gh.lazySingleton<_i7.Graph>(() => servicesModule.graph);
  gh.lazySingleton<_i8.Logger>(() => loggerDi.logger);
  gh.lazySingleton<_i9.PeeplEatsService>(
      () => _i9.PeeplEatsService(get<_i3.Dio>()));
  gh.lazySingleton<_i10.PeeplPaySerivce>(
      () => _i10.PeeplPaySerivce(get<_i3.Dio>()));
  gh.singleton<_i11.RootRouter>(servicesModule.rootRouter);
  gh.lazySingleton<_i12.StripePayService>(
      () => _i12.StripePayService(get<_i3.Dio>()));
  gh.lazySingleton<_i7.StudioApi>(() => servicesModule.api);
  gh.lazySingleton<_i7.WalletApi>(() => servicesModule.walletApi);
  gh.lazySingleton<_i13.LogIt>(() => _i13.LogIt(get<_i8.Logger>()));
  return get;
}

class _$DioDi extends _i14.DioDi {}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}

class _$ServicesModule extends _i16.ServicesModule {}

class _$LoggerDi extends _i17.LoggerDi {}
