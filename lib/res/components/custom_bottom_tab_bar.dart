import 'package:flutter/material.dart';

class CustomBottomTabBar extends StatelessWidget {
  const CustomBottomTabBar({Key? key}) : super(key: key);

  static const List<Tab> _tabs = [
    Tab(text: "HOME"),
    Tab(text: "LOTTO FORECAST"),
    Tab(text: "TIMING KEYS"),
    Tab(text: "2 SURE TRACER"),
    Tab(text: "POWER X PLAY"),
    Tab(text: "SETTINGS"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Container(
        // color: Color(0xFF3F5AA6),
        margin: const EdgeInsets.only(bottom: 11),
        child: TabBar(
          // labelColor: Colors.white,
          // unselectedLabelColor: Colors.white60,
          // indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding:
              const EdgeInsets.symmetric(vertical: 7, horizontal: 23),
          indicatorColor: Colors.white,
          onTap: (int index) {},
          tabs: _tabs,
        ),
      ),
    );
  }
}
