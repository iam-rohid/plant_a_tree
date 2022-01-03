import 'package:flutter/material.dart';
import 'package:plant_a_tree/configs/configs.dart';

class SearchField extends StatelessWidget {
  final TextEditingController? controller;
  final bool autoFocus;
  const SearchField({
    Key? key,
    this.controller,
    this.autoFocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            shadow,
          ]),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          TextField(
            controller: controller,
            autofocus: autoFocus,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                left: 50,
                right: 16,
              ),
              hintText: "Search for plants",
              hintStyle: TextStyle(
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
              ),
              border: InputBorder.none,
            ),
          ),
          Positioned(
            left: 16,
            child: Image.asset(
              "assets/icons/search.png",
              width: 24,
              height: 24,
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
