import 'package:flutter/material.dart';
import 'package:plant_a_tree/configs/configs.dart';
import 'package:plant_a_tree/views/widgets/widgets.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final _searchEditorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Hero(
                    tag: "search_field",
                    child: Material(
                      color: Colors.transparent,
                      child: SearchField(
                        controller: _searchEditorController,
                        autoFocus: true,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      shadow,
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/icons/filter.png",
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(0.6),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 20,
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: .65,
              ),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              itemBuilder: (_context, index) => const ProductCard(),
            ),
          )
        ],
      ),
    );
  }
}
