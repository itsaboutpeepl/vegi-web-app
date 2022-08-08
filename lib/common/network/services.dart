import 'package:injectable/injectable.dart';
import 'package:vegan_liverpool/common/router/routes.dart';

@module
abstract class ServicesModule {
  @singleton
  RootRouter get rootRouter => RootRouter();
}
