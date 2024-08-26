import 'package:crud_app/add%20data/presentation/views/add_data_view.dart';
import 'package:crud_app/home/home_view.dart';
import 'package:crud_app/main.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({super.key});

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color(0xff6750A4),
        selectedIconTheme: const IconThemeData(color: Color(0xff6750A4)),
        showSelectedLabels: true,
        currentIndex: 0,
        onTap: (value) {
          setState(() {
            pageController.jumpToPage(value);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_rounded),
            label: 'Add Data',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        children: const [
          AddDataView(),
          HomeView(),
        ],
      ),
    );
  }
}
