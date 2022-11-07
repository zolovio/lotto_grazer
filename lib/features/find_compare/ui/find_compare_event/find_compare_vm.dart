import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../main.dart';
import '../../../../utils/routes/routes_names.dart';

final findCompareEventVmProvider =
    ChangeNotifierProvider.autoDispose<FindCompareEventVm>((ref) {
  return FindCompareEventVm();
});

class FindCompareEventVm extends ChangeNotifier {
  void onSearchTap(BuildContext context) {
    navigatorKey.currentState?.pushNamed(RoutesName.midFortuneLotto);
  }
}
