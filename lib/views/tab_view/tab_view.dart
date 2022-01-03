import 'package:flutter/material.dart';
import 'package:plant_a_tree/views/home_view/home_view.dart';

class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeIndex,
        onTap: (index) {
          setState(() {
            _activeIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Home_fill.png",
              width: 32,
              height: 32,
              color: _activeIndex == 0
                  ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
                  : Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedItemColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Favorite_fill.png",
              width: 32,
              height: 32,
              color: _activeIndex == 1
                  ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
                  : Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedItemColor,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Bag_fill.png",
              width: 32,
              height: 32,
              color: _activeIndex == 2
                  ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
                  : Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedItemColor,
            ),
            label: "Bag",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/icons/Menu.png",
              width: 32,
              height: 32,
              color: _activeIndex == 3
                  ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
                  : Theme.of(context)
                      .bottomNavigationBarTheme
                      .unselectedItemColor,
            ),
            label: "More",
          ),
        ],
      ),
      body: Stack(
        children: [
          Visibility(
            visible: _activeIndex == 0,
            maintainAnimation: true,
            maintainState: true,
            maintainInteractivity: false,
            child: HomeView(),
          ),
          Visibility(
            visible: _activeIndex == 1,
            maintainAnimation: true,
            maintainState: true,
            maintainInteractivity: false,
            child: Center(
              child: Text("Hello world"),
            ),
          ),
          Visibility(
            visible: _activeIndex == 2,
            maintainAnimation: true,
            maintainState: true,
            maintainInteractivity: false,
            child: Center(
              child: Text("Hello world"),
            ),
          ),
          Visibility(
            visible: _activeIndex == 3,
            maintainAnimation: true,
            maintainState: true,
            maintainInteractivity: false,
            child: Center(
              child: Text("Hello world"),
            ),
          )
        ],
      ),
    );
  }
}
