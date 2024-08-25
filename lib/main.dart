import 'package:crud_app/bottom_navigatoin_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final PageController pageController = PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarView(),
    );
  }
}
