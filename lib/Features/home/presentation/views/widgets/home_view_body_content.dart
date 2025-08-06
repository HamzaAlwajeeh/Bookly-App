import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featuredListView.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBodyContent extends StatelessWidget {
  const HomeViewBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeaturedListView(),
        Text('Best Seller', style: Styles.textStyle18),
        BestSellerListViewItem(),
      ],
    );
  }
}
