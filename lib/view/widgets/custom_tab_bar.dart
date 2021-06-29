import 'package:flutter/material.dart';

import '../../constance.dart';

import '../products/home_screen.dart';
import '../products/favorites_screen.dart';
import '../products/profile_screen.dart';

class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  int index = 0;
  TabController tabController;

  initTabController() {
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void initState() {
    initTabController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          index == 0
              ? 'Home'
              : index == 1
                  ? 'Favorites'
                  : 'Profile',
        ),
        bottom: TabBar(
          controller: tabController,
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favorite',
            ),
            Tab(
              icon: Icon(Icons.perm_identity),
              text: 'Profile',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          HomeScreen(),
          FavoritesScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
