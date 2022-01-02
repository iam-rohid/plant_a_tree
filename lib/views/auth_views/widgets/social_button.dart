import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String icon;
  final String title;
  final Function onPress;
  const SocialButton(
      {Key? key,
      required this.icon,
      required this.title,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 20,
              child: Image.asset(
                icon,
                width: 32,
                height: 32,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
