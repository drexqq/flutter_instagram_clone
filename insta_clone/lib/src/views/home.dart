import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  AppBar _appBar() {
    return AppBar(
      title: const Text("Test"),
      actions: [
        IconButton(
          icon: const Icon(Icons.add_box_outlined),
          onPressed: () {},
          iconSize: 30,
        ),
      ],
      centerTitle: false,
    );
  }

  BottomNavigationBar _bottomNavBar(context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
              icon: const Icon(Icons.home_outlined),
              onPressed: () {
                Navigator.pushNamed(context, "/");
              }),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: IconButton(
              icon: const Icon(Icons.shopping_bag_outlined),
              onPressed: () {
                Navigator.pushNamed(context, "/shop");
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
      body: const Center(
        child: Text("HOME"),
      ),
      bottomNavigationBar: _bottomNavBar(context),
    );
  }
}
