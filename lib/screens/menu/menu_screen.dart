import 'package:flutter/material.dart';

import '../../components/appbar.dart';
import '../screen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int currentIndex = 0;

  List<Widget> screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const ProfileScreen()
  ];
  List<String> titles = [
    'Danh sách sản phẩm',
    'Sản phẩm ưa thích',
    'Trang cá nhân'
  ];
  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: ' Trang chủ'),
    const BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Đã thích'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.person), label: 'Trang cá nhân')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, titles.elementAt(currentIndex)),
      body: SafeArea(child: screens[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: items,
      ),
    );
  }
}
