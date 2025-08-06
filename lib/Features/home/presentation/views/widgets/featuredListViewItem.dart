import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ListViewFeaturedItem extends StatelessWidget {
  const ListViewFeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
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
      ),
    );
  }
}
