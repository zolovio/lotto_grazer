import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_grazer/utils/routes/routes.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Lotto Grazer',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            navigatorKey: navigatorKey,
            initialRoute: RoutesName.splash,
            onGenerateRoute: Routes.generateRoute,
          );
        });
  }
}
