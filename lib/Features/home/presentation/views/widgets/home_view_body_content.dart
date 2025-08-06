import 'package:bookly_app/Features/home/presentation/views/widgets/featuredListView.dart';
import 'package:flutter/material.dart';

class HomeViewBodyContent extends StatelessWidget {
  const HomeViewBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeaturedListView(),
        SizedBox(height: 20),
        Text(
          'Best Seller',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    );
  }
}
