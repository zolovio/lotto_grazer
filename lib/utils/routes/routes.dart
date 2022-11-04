import 'package:flutter/material.dart';
import 'package:lotto_grazer/features/auth/login/ui/login_ui.dart';
import 'package:lotto_grazer/features/auth/splash_screen.dart';
import 'package:lotto_grazer/features/language/language_ui.dart';
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
