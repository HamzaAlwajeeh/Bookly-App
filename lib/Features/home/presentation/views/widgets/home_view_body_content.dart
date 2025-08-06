import 'package:bookly_app/Features/home/presentation/views/widgets/featuredListViewItem.dart';
import 'package:flutter/material.dart';

class HomeViewBodyContent extends StatelessWidget {
  const HomeViewBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ListViewFeaturedItem()]);
  }
}
