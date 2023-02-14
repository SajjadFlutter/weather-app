import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final PageController controller;
  const BottomNav({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 63.0,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                controller.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              icon: const Icon(Icons.home),
            ),
            const SizedBox(),
            IconButton(
              onPressed: () {
                controller.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              icon: const Icon(Icons.bookmark),
            ),
          ],
        ),
      ),
    );
  }
}
