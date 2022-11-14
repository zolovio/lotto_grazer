import 'package:flutter/material.dart';
import 'package:lotto_grazer/features/auth/ui/auth_ui.dart';
import 'package:lotto_grazer/features/auth/splash_screen.dart';
import 'package:lotto_grazer/features/home%20page/home_ui.dart';
import 'package:lotto_grazer/features/language/language_ui.dart';
import 'package:lotto_grazer/features/lotto%20forecast%20today/ui/forecast_details_ui.dart';
import 'package:lotto_grazer/features/lotto%20forecast%20today/ui/lotto_forecast_today_ui.dart';
import 'package:lotto_grazer/features/lotto%20key%20book/lotto_key_book.dart';
import 'package:lotto_grazer/features/lotto%20result/lotto_today_result_ui.dart';
import 'package:lotto_grazer/features/overdue%20number/overdue_numbers_ui.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashUi());

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
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomePageUi());
      case RoutesName.lottoForecastToday:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LottoForecastTodayUi());
      case RoutesName.forecastDetails:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ForecastDetails());
      case RoutesName.lottoKeyBook:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LottoKeyBook());
      case RoutesName.lottoResult:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LottoResultUi());
      case RoutesName.overdueNumbers:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OverdueNumbersUi());

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
