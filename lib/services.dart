import 'package:vegan_liverpool/common/di/di.dart';
import 'package:vegan_liverpool/common/router/routes.gr.dart';
import 'package:vegan_liverpool/services/apis/peeplPay.dart';
import 'package:vegan_liverpool/services/apis/peeplEats.dart';
import 'package:vegan_liverpool/services/apis/stripePay.dart';

final RootRouter rootRouter = getIt<RootRouter>();

final PeeplEatsService peeplEatsService = getIt<PeeplEatsService>();

final StripePayService stripePayService = getIt<StripePayService>();

final PeeplPaySerivce peeplPayService = getIt<PeeplPaySerivce>();
