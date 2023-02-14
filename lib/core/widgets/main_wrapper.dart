import 'package:flutter/material.dart';
import 'package:weather_app/core/widgets/bottom_nav.dart';
import 'package:weather_app/features/feature_weather/presentation/screens/home_screen.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      HomeScreen(),
      HomeScreen(),
    ];
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: pages,
      ),
      bottomNavigationBar: BottomNav(controller: _pageController),
    );
  }
}
