import 'package:flutter/material.dart';
import 'package:lotto_grazer/features/auth/login/ui/login_ui.dart';
import 'package:lotto_grazer/features/auth/splash_screen.dart';
import 'package:lotto_grazer/features/find_compare/ui/find_compare_event/find_compare_even.dart';
import 'package:lotto_grazer/features/find_compare/ui/miid_fortune_lotto/miid_fotune_lotto.dart';
import 'package:lotto_grazer/features/language/language_ui.dart';
import 'package:lotto_grazer/features/lotto_timing/ui/lotto_timing_screen.dart';
import 'package:lotto_grazer/temp_route.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashUi());
      case RoutesName.findCompare:
        return MaterialPageRoute(
            builder: (BuildContext context) => const FindCompareEventScreen());
      case RoutesName.midFortuneLotto:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MiidFortuneLottoScreen());
      case RoutesName.tempRoute:
        return MaterialPageRoute(
            builder: (BuildContext context) => const TempRoute());
      case RoutesName.lottoTiming:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LottoTimingScreen());
      // case RoutesName.productdetails:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ProductDetailsView(
      //             args: settings.arguments as Map,
      //           ));

      case RoutesName.language:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LanguageUi());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginUi());
      // case RoutesName.signUp:
      //   return MaterialPageRoute(builder: (BuildContext context) => const SignUpView());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
