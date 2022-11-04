import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Utils {
  static double height(context) {
    return MediaQuery.of(context).size.height;
  }

  static double width(context) {
    return MediaQuery.of(context).size.width;
  }

  static Future<bool> onWillPop(context) async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit the App'),
            actions: <Widget>[
              MaterialButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              MaterialButton(
                onPressed: () => SystemNavigator.pop(),
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }
}
