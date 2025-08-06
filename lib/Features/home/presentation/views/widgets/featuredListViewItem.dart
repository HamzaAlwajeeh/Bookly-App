import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Featuredlistviewitem extends StatelessWidget {
  const Featuredlistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
