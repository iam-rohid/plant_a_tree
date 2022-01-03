import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_a_tree/configs/configs.dart';
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
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.width * (9 / 16),
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CarouselCard();
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Text(
                        "Recommended",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "See more",
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        width: (MediaQuery.of(context).size.width - 30) / 2,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const ProductCard(),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Text(
                        "Recently Viewed",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "See more",
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        width: (MediaQuery.of(context).size.width - 30) / 2,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const ProductCard(),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Text(
                        "Populer",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "See more",
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    itemBuilder: (context, index) {
                      return Container(
                        width: (MediaQuery.of(context).size.width - 30) / 2,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: const ProductCard(),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            children: [
              Image.network(
                "https://images.unsplash.com/photo-1463320898484-cdee8141c787?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                fit: BoxFit.cover,
                width: constraints.maxWidth,
                height: constraints.maxHeight,
              ),
              Positioned(
                right: 16,
                top: 16,
                child: GestureDetector(
                  child: Container(
                    color: Colors.transparent,
                    width: 32,
                    height: 32,
                    child: Center(
                      child: Image.asset(
                        "assets/icons/favorite.png",
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    left: 20,
                    right: 20,
                    top: 80,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.7),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Fruit Plant",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "Jackfruit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        child: Text(
                          "৳ 180",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
