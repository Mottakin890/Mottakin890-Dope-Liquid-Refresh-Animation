import 'package:dope_lequid_refresh_animation/container_el.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false);
  }
}

class HomePage extends StatelessWidget {
  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  HomePage({super.key});

  final List<IconData> _icon = [
    Icons.android_outlined,
    Icons.apple_outlined,
    Icons.notification_add_outlined,
    Icons.mobile_friendly_outlined,
    Icons.accessibility_new_outlined,
    Icons.airline_seat_flat_outlined,
    Icons.add_task_outlined,
    Icons.album_outlined,
    Icons.api_outlined,
    Icons.back_hand_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      body: LiquidPullToRefresh(
        animSpeedFactor: 4,
        backgroundColor: Colors.blueGrey.shade200,
        color: Colors.blueGrey.shade400,
        height: 300,
        onRefresh: _handleRefresh,
        child: ListView.builder(
          itemCount: _icon.length,
          itemBuilder: (context, index) {
            return ContainerEl(icon: _icon[index]);
          },
        ),
      ),
    );
  }
}
