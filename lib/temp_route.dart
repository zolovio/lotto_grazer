import 'package:flutter/material.dart';
import 'package:lotto_grazer/main.dart';
import 'package:lotto_grazer/utils/routes/routes_names.dart';

class TempRoute extends StatelessWidget {
  const TempRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            ElevatedButton(
              onPressed: () {
                navigatorKey.currentState?.pushNamed(
                  RoutesName.findCompare,
                );
              },
              child: const Text('FindCompareEventScreen'),
            ),
            ElevatedButton(
              onPressed: () {
                navigatorKey.currentState?.pushNamed(
                  RoutesName.lottoTiming,
                );
              },
              child: const Text('lotto timing Screen'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     navigatorKey.currentState?.pushNamed(
            //       RoutesName.findCompare,
            //     );
            //   },
            //   child: const Text('FindCompareEventScreen'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     navigatorKey.currentState?.pushNamed(
            //       RoutesName.findCompare,
            //     );
            //   },
            //   child: const Text('FindCompareEventScreen'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     navigatorKey.currentState?.pushNamed(
            //       RoutesName.findCompare,
            //     );
            //   },
            //   child: const Text('FindCompareEventScreen'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     navigatorKey.currentState?.pushNamed(
            //       RoutesName.findCompare,
            //     );
            //   },
            //   child: const Text('FindCompareEventScreen'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     navigatorKey.currentState?.pushNamed(
            //       RoutesName.findCompare,
            //     );
            //   },
            //   child: const Text('FindCompareEventScreen'),
            // ),
          ],
        ),
      ),
    );
  }
}
