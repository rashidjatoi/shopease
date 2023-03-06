import 'package:flutter/material.dart';
import 'package:shopease/views/home_view/home_view.dart';
import 'package:shopease/views/search/search_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navIndex = 0;

  List<BottomNavigationBarItem> bottomNavigatoinBar = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourite"),
    BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  var navBody = [
    const HomeView(),
    const SearchView(),
    const HomeView(),
    const HomeView(),
    const HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBody[navIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigatoinBar,
        currentIndex: navIndex,
        selectedItemColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        onTap: (value) {
          navIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
