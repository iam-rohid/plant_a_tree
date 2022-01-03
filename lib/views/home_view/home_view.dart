import 'package:flutter/material.dart';
import 'package:plant_a_tree/views/views.dart';
import 'package:plant_a_tree/views/widgets/widgets.dart';
import './widgets/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  void _onSearchBarTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SearchView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        _onSearchBarTap(context);
                      },
                      child: const AbsorbPointer(
                        absorbing: true,
                        child: Hero(
                          tag: "search_field",
                          child: Material(
                            color: Colors.transparent,
                            child: SearchField(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Main Carousel
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
