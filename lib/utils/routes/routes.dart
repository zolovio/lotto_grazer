import 'package:flutter/material.dart';
import 'package:lotto_grazer/features/auth/splash_screen.dart';
import 'package:lotto_grazer/features/auth/ui/auth_ui.dart';
import 'package:lotto_grazer/features/dashboard/dashboard.dart';
import 'package:lotto_grazer/features/grenco_numbers/grenco_numbers_screen.dart';
import 'package:lotto_grazer/features/home_page/home_ui.dart';
import 'package:lotto_grazer/features/language/language_ui.dart';
import 'package:lotto_grazer/features/lotto_key_book/lotto_key_book.dart';
import 'package:lotto_grazer/features/lotto_prediction/lotto_prediction_ui.dart';
import 'package:lotto_grazer/features/lotto_result/lotto_today_result_ui.dart';
import 'package:lotto_grazer/features/overdue_number/overdue_numbers_ui.dart';
import 'package:lotto_grazer/features/saved_plans/saved_plans_screen.dart';
import 'package:lotto_grazer/features/timing%20keys/timing_keys_screen.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context) => const SplashUi());

      // case RoutesName.productdetails:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => ProductDetailsView(
      //             args: settings.arguments as Map,
      //           ));

      case RoutesName.language:
        return MaterialPageRoute(builder: (BuildContext context) => const LanguageUi());
      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginUi());
      case RoutesName.dashboard:
        return MaterialPageRoute(builder: (BuildContext context) => const Dashboard());

      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomePageUi());
      case RoutesName.lottoPrediction:
        return MaterialPageRoute(builder: (BuildContext context) => const LottoPredictionUi());

      case RoutesName.lottoKeyBook:
        return MaterialPageRoute(builder: (BuildContext context) => const LottoKeyBook());
      case RoutesName.lottoResult:
        return MaterialPageRoute(builder: (BuildContext context) => const LottoResultUi());
      case RoutesName.overdueNumbers:
        return MaterialPageRoute(builder: (BuildContext context) => const OverdueNumbersUi());
      case RoutesName.grencoNumbers:
        return MaterialPageRoute(builder: (BuildContext context) => const GrencoNumbersScreen());
      case RoutesName.savedPlans:
        return MaterialPageRoute(builder: (BuildContext context) => const SavedPlansScreen());
      case RoutesName.timingKeys:
        return MaterialPageRoute(builder: (BuildContext context) => TimingKeysScreen());
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
