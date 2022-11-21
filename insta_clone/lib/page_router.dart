import 'package:flutter/material.dart';
import 'package:insta_clone/src/views/home.dart';
import 'package:insta_clone/src/views/shop.dart';
import 'package:insta_clone/src/views/upload.dart';

class PageRouter extends StatefulWidget {
  const PageRouter({super.key});

  @override
  State<PageRouter> createState() => _PageRouterState();
}

class _PageRouterState extends State<PageRouter> {
  int _pageIndex = 0;

  final _page = [
    const Home(),
    const Shop(),
  ];

  AppBar _appBar() {
    return AppBar(
      title: const Text("Test"),
      actions: [
        IconButton(
          icon: const Icon(Icons.add_box_outlined),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Upload()));
          },
          iconSize: 30,
        ),
      ],
      centerTitle: false,
    );
  }

  BottomNavigationBar _bottomNavBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
              icon: const Icon(Icons.home_outlined),
              onPressed: () {
                setState(() {
                  _pageIndex = 0;
                });
              }),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              icon: const Icon(Icons.shopping_bag_outlined),
              onPressed: () {
                setState(() {
                  _pageIndex = 1;
                });
              }),
          label: "shop",
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _page[_pageIndex],
      bottomNavigationBar: _bottomNavBar(),
    );
  }
}
