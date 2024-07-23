import 'package:fit_happens_pro/views/Screens/bottomNavBar/RoutineMatchProfile/routine_match_profile_screen.dart';
import 'package:fit_happens_pro/views/Screens/bottomNavBar/workoutRestDay/work_out_restday.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../utils/app_colors.dart';
import '../bottomNavBar/groceryLists/groceryList1/grocery_list1.dart';
import '../bottomNavBar/homeContent/home_Content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      const HomeContent(),
      const GroceryList1Screen(),
      const WorkOutRestDayScreen(),
      const RoutineMatchProfileScreen(),
      MoreScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Color(0xFF00FF8F),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.restaurant_menu),
        title: ("Eat"),
        activeColorPrimary: Color(0xFF00FF8F),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add),
        title: ("Add"),
        activeColorPrimary: Color(0xFF00FF8F),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.local_grocery_store),
        title: ("Grocery"),
        activeColorPrimary: Color(0xFF00FF8F),
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.more_horiz),
        title: ("More"),
        activeColorPrimary: Color(0xFF00FF8F),
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        handleAndroidBackButtonPress: true,
        confineToSafeArea: true,
        hideNavigationBarWhenKeyboardAppears: true,
        backgroundColor: kBottomNavigationColor,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        isVisible: true,
        navBarHeight: kBottomNavigationBarHeight,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
      ),
    );
  }
}

class EatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Eat Screen'),
    );
  }
}

class CenterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Add Screen'),
    );
  }
}

class GroceryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Grocery Screen'),
    );
  }
}

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('More Screen'),
    );
  }
}

/*class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Bottom Navigation Bar'),
      ),
      body: Center(
        child: Text(
          'Selected Index: $_selectedIndex',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kWhiteTextColor,
        onPressed: () {},
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        color: kBottomNavigationColor,
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 80.h,
        surfaceTintColor: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: Icon(Icons.restaurant_menu),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              icon: Icon(Icons.restaurant_menu),
              onPressed: () => _onItemTapped(1),
            ),
            IconButton(
              icon: Icon(Icons.fitness_center),
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: Icon(Icons.local_grocery_store),
              onPressed: () => _onItemTapped(3),
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => _onItemTapped(4),
            ),
          ],
        ),
      ),
    );
  }
}*/
