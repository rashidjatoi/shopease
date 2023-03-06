import 'package:flutter/material.dart';
import 'package:shopease/views/search/women_clothing.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, length: 3)
      ..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              fabIcon = Icons.camera_alt_outlined;
              break;
            case 1:
              fabIcon = Icons.chat;
              break;
            case 2:
              fabIcon = Icons.camera_alt_outlined;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(
            fontFamily: "Sf Bold",
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        actions: [
          IconButton(
              splashRadius: 20,
              onPressed: () {},
              icon: const Icon(Icons.search))
        ],
        bottom: TabBar(
          tabs: const [
            Tab(
              child: Text(
                "WOMEN",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Sf Bold",
                ),
              ),
            ),
            Tab(
                child: Text(
              "MEN",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Sf Bold",
              ),
            )),
            Tab(
                child: Text(
              "KIDS",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Sf Bold",
              ),
            )),
          ],
          controller: tabController,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          WomenClothing(),
          WomenClothing(),
          WomenClothing(),
        ],
      ),
    );
  }
}
