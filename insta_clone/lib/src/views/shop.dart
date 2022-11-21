import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

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

  BottomNavigationBar _bottomNavBar() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
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
        child: Text("SHOP"),
      ),
      bottomNavigationBar: _bottomNavBar(),
    );
  }
}
